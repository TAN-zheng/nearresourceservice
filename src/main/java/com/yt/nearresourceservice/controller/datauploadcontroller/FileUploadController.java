package com.yt.nearresourceservice.controller.datauploadcontroller;


import com.yt.nearresourceservice.bean.Img;
import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.UUID;

@Controller
public class FileUploadController {
    /*
     * 执行文件上传
     * */
    @RequestMapping("/fileUpload")
    @ResponseBody
    public Result handleFormUpload(@RequestParam("") Long sponsorid, List<MultipartFile> uploadInst, HttpServletRequest request) throws FileNotFoundException {
        System.out.println("前端页面访问了controller层");
        //        判断上传文件是否存在。
        if (!uploadInst.isEmpty() && uploadInst.size() > 0) {
            System.out.println("进入判断即将读取文件" + uploadInst);
//                循环输出上传的文件
            for (MultipartFile file : uploadInst) {
                System.out.println("进入了循环！");
//                    获取上传文件的原始名称
                String originalFilename = file.getOriginalFilename();
                System.out.println("上传文件名："+originalFilename);
//                    设置上传文件的保存地址目录
                /*
                * 一、图片文件上传后存储的地方。
                * 第一种。
                * 这条语句是把图片放在绝对路径下，这个路径是物理上的，并且跟tomcat密切相关。
                * String dirPath = request.getServletContext().getRealPath("/src/main/resources/static/layuiadmin/style/res/nrsimage");
                * 第二种。
                * 这个方法是把图片上传到了target的目录里面了。
                 * String dirPath= ResourceUtils.getURL("classpath:").getPath();
                * */
//                String dirPath= request.getSession().getServletContext().getRealPath("/src/main/resources/static/layuiadmin/style/res/nrsimage/");
                String dirPath="G:/nreimag/";
                System.out.println("文件的保存地址目录:"+dirPath);

                File filePath = new File(dirPath);
//                          如果保存文件的地址不存在，就先创建目录。
                if (!filePath.exists()) {
                    System.out.println("创建了图片文件夹");
                    filePath.mkdirs();
                }
//                    使用UUID重新命名上传文件名称（）
                String newFilename = UUID.randomUUID() + originalFilename;
                try {
//                    使用MultipartFile接口的方法完成文件上传到指定位置。
                    file.transferTo(new File(dirPath + newFilename));
                    System.out.println("上传成功！");
                    Img img = new Img();
                    img.setSrc(dirPath+newFilename);
                    img.setSponsorid(sponsorid);
                    Result result = new Result();
                    result.setCode(0);
                    result.setMsg("图片路径已存在！");
                    result.setData(img);
                    System.out.println(result.toString());
                    return result;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }
}
