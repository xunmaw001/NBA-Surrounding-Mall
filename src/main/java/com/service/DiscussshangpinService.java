package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshangpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshangpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshangpinView;


/**
 * 商品评论表
 *
 * @author 
 * @email 
 * @date 2020-11-13 11:15:11
 */
public interface DiscussshangpinService extends IService<DiscussshangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshangpinVO> selectListVO(Wrapper<DiscussshangpinEntity> wrapper);
   	
   	DiscussshangpinVO selectVO(@Param("ew") Wrapper<DiscussshangpinEntity> wrapper);
   	
   	List<DiscussshangpinView> selectListView(Wrapper<DiscussshangpinEntity> wrapper);
   	
   	DiscussshangpinView selectView(@Param("ew") Wrapper<DiscussshangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshangpinEntity> wrapper);
   	
}

