package com.yt.nearresourceservice.controller.orders;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.Result;
import com.yt.nearresourceservice.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OrdersLayerController {
    @Autowired
    ResourceService resourceService;

    /*
    * 前端传入id到后端查询，这个id的资源数据，查出来后用json格式的数据，返回给Layer弹出层。
    * */
    @RequestMapping("/ordersLayer")
    public String ordersLayer(Long id, Model model){
           Resource resource = resourceService.getPersonalOrders(id);
           model.addAttribute("resource",resource);
        return "views/template/layer/goodsLayer";
    }
    //实现资源信息的修改和状态更改
    @RequestMapping("/changePersonalOrdersAboutState")
    @ResponseBody
    public Result changePersonalOrdersAboutState(@RequestBody Resource resource){
        boolean flog=false;
        System.out.println("个人页面传递的要修改的值："+resource);
      flog=  resourceService.updatePersonalOrders(resource);
      Result result = new Result();
      if (flog == true){
            result.setMsg("修改操作成功了！");
      }else {
          result.setMsg("修改操作失败！");
      }
        return result;
    }
}
