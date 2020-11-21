<?php
class ModelCatalogLMCfilter extends Model {
    
	public function addFilter_price($data) {
		$this->db->query("INSERT INTO `" . DB_PREFIX . "filter_group` SET sort_order = '" . (int)$data['sort_order'] . "'");

		$filter_group_id = $this->db->getLastId();

        $this->db->query("INSERT INTO " . DB_PREFIX . "filter SET filter_group_id = '" . (int)$filter_group_id . "'");
        $filter_id = $this->db->getLastId();
        
		foreach ($data['filter_group_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "filter_group_description SET filter_group_id = '" . (int)$filter_group_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
            $this->db->query("INSERT INTO " . DB_PREFIX . "filter_description SET filter_id = '" . (int)$filter_id . "', language_id = '" . (int)$language_id . "', filter_group_id = '" . (int)$filter_group_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
        
        $this->db->query("INSERT INTO " . DB_PREFIX . "LMCfilter SET filter_group_id = '" . (int)$filter_group_id . "', mode = 'price', data = '{}'");

		return $filter_group_id;
	}
    
	public function editFilter_price($filter_group_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "filter_group` SET sort_order = '" . (int)$data['sort_order'] . "' WHERE filter_group_id = '" . (int)$filter_group_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "filter_group_description WHERE filter_group_id = '" . (int)$filter_group_id . "'");
        $this->db->query("DELETE FROM " . DB_PREFIX . "filter WHERE filter_group_id = '" . (int)$filter_group_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "filter_description WHERE filter_group_id = '" . (int)$filter_group_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "LMCfilter WHERE filter_group_id = '" . (int)$filter_group_id . "'");
        
        $this->db->query("INSERT INTO " . DB_PREFIX . "filter SET filter_group_id = '" . (int)$filter_group_id . "'");
        $filter_id = $this->db->getLastId();
        $this->db->query("INSERT INTO " . DB_PREFIX . "LMCfilter SET filter_group_id = '" . (int)$filter_group_id . "', mode = 'price', data = '{}'");
        
		foreach ($data['filter_group_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "filter_group_description SET filter_group_id = '" . (int)$filter_group_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
            $this->db->query("INSERT INTO " . DB_PREFIX . "filter_description SET filter_id = '" . (int)$filter_id . "', language_id = '" . (int)$language_id . "', filter_group_id = '" . (int)$filter_group_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}

	}
    
}
