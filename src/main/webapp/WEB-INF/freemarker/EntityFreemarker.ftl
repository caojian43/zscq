package ${packagePath };

import java.io.Serializable;

<#assign i = 1>
<#list entityPropertiesList as prop>
<#if prop.type == 'Date' && i == 1>
import java.util.Date;
<#assign i = i + 1>
</#if>
</#list>

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.uusee.core.framework.entity.HibernateEntity;

/**
 * ${entityName }实体类
 * 
 */
@Entity
@Table(name = "${tableName }")
public class ${entityName } extends HibernateEntity {
	
<#list entityPropertiesList as prop>
<#if prop.key?? && prop.key=='PRI'>
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
</#if>
	@Column(name = "${prop.sqlname }")
	private ${prop.type } ${prop.name };
	
</#list>
	
<#list entityPropertiesList as prop>
	
<#if prop.key?? && prop.key=='PRI'>
	public Serializable get${prop.name?cap_first }() {
		return ${prop.name };
	}
<#else>
	public ${prop.type } get${prop.name?cap_first }() {
		return ${prop.name };
	}
</#if>

	public void set${prop.name?cap_first }(${prop.type } ${prop.name }) {
		this.${prop.name } = ${prop.name };
	}
	
</#list>
}