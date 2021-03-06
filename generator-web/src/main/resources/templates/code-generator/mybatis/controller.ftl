package ${packageName}.controller;

import ${packageName}.base.dto.*;
import ${packageName}.service.I${classInfo.className}Service;
import ${packageName}.dto.${classInfo.className}Dto;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @author ${authorName}
 * @Version 1.0.0
 * @date ${.now?string('yyyy-MM-dd')}
 * @description ${classInfo.classComment}
 */
@RestController
@RequestMapping(value = "/${classInfo.className?uncap_first}")
@Api(tags = "${classInfo.classComment}")
public class ${classInfo.className}Controller {

    @Resource
    private I${classInfo.className}Service i${classInfo.className}Service;

    /**
     * 新增
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    @RequestMapping("/insert")
    @ApiOperation(value = "保存${classInfo.className}",notes = "保存${classInfo.className}")
    @ApiImplicitParam(name = "${classInfo.className?uncap_first}Dto",value = "${classInfo.classComment}Dto",dataType = "${classInfo.className}Dto",required = true)
    public ResponseBaseDTO insert(@RequestBody ${classInfo.className}Dto ${classInfo.className?uncap_first}Dto){
        return i${classInfo.className}Service.insert(${classInfo.className?uncap_first}Dto);
    }

    /**
     * 刪除
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    @RequestMapping("/delete")
    @ApiOperation(value = "刪除${classInfo.className}",notes = "刪除${classInfo.className}")
    @ApiImplicitParam(name = "id",value = "id",dataType = "Integer",required = true)
    public ResponseBaseDTO delete(@RequestParam int id){
        return i${classInfo.className}Service.delete(id);
    }

    /**
     * 更新
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    @RequestMapping("/update")
    @ApiOperation(value = "更新${classInfo.className}",notes = "更新${classInfo.className}")
    @ApiImplicitParam(name = "${classInfo.className?uncap_first}Dto",value = "${classInfo.classComment}Dto",dataType = "${classInfo.className}Dto",required = true)
    public ResponseBaseDTO update(@RequestBody ${classInfo.className}Dto ${classInfo.className?uncap_first}Dto){
        return i${classInfo.className}Service.update(${classInfo.className?uncap_first}Dto);
    }

    /**
     * 查询 根据主键 id 查询
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    @RequestMapping("/load")
    @ApiOperation(value = "根据主键查询${classInfo.className}",notes = "根据主键查询${classInfo.className}")
    @ApiImplicitParam(name = "id",value = "id",dataType = "Integer",required = true)
    public ResponseBaseDTO queryById(@RequestParam int id){
        return i${classInfo.className}Service.queryById(id);
    }

<#--    /**-->
<#--     * 查询 分页查询-->
<#--     * @author ${authorName}-->
<#--     * @date ${.now?string('yyyy/MM/dd')}-->
<#--     **/-->
<#--    @RequestMapping("/pageList")-->
<#--    @ApiOperation(value = "分页查询",notes = "分页查询")-->
<#--    @ApiImplicitParams({-->
<#--            @ApiImplicitParam(name="offset",value="偏移量",required=true,paramType="query"),-->
<#--            @ApiImplicitParam(name="pagesize",value="每页数量",required=true,paramType="query"),-->
<#--    })-->
<#--    public ResponseBaseDTO pageList(@RequestParam(required = false, defaultValue = "0") int offset,-->
<#--                                    @RequestParam(required = false, defaultValue = "10") int pagesize) {-->
<#--        return i${classInfo.className}Service.pageList(offset, pagesize);-->
<#--    }-->

}
