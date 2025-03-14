package com.entity.view;

import com.entity.ShangpinpingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品评价
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-13 11:15:11
 */
@TableName("shangpinpingjia")
public class ShangpinpingjiaView  extends ShangpinpingjiaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinpingjiaView(){
	}
 
 	public ShangpinpingjiaView(ShangpinpingjiaEntity shangpinpingjiaEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinpingjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
