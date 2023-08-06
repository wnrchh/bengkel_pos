<?php
if(!function_exists('get_field')){
	function get_field($id,$namatabel,$namafield='Nama')
	{
		if(!empty($id)){
			$ci = &get_instance();
			$ci->db->SELECT($namafield." as field");
			$ci->db->WHERE('ID',$id);
			$Q=$ci->db->get($namatabel)->row();
			if(!empty($Q)){
				$value = $Q->field;
			}else{
				$value = '';
			}
		}else{
			$value = '';
		}
		return $value;
	}
}

