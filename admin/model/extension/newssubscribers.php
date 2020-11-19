<?php
class ModelExtensionNewssubScribers extends Model {
	public function install() {
	$this->db->query("CREATE TABLE IF NOT EXISTS `".DB_PREFIX."newslettertemplate` (
  `newstemplate_id` int(41) NOT NULL AUTO_INCREMENT,
  `name` varchar(41) NOT NULL,
  `sortorder` int(100) NOT NULL,
  `status` int(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`newstemplate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;");

$this->db->query("CREATE TABLE IF NOT EXISTS `".DB_PREFIX."newstemplate` (
  `newstemplate_id` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `language_id` int(10) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;");
	}
	public function uninstall() {
	$this->db->query("DROP TABLE IF EXISTS `".DB_PREFIX."newslettertemplate`");
	}
	
   private function check_db(){
	   
	$this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "subscribe (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_id` varchar(225) NOT NULL,
 
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`email_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;");

   }
	public function addEmail($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "subscribe SET email_id='".$data['email_id']."'");
	}
	
	public function editEmail($id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "subscribe SET email_id='".$data['email_id']."' WHERE id = '" . (int)$id . "'");
	}
	
	public function deleteEmail($id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "subscribe WHERE id = '" . (int)$id . "'");
	}
	
	public function getEmail($id) {
		$query = $this->db->query("SELECT  * FROM " . DB_PREFIX . "subscribe WHERE id = '" . (int)$id . "'");

		return $query->row;
	}
	
	public function getEmails($data) {
		

		
		$sql = "SELECT * FROM " . DB_PREFIX . "subscribe";
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
			
	}
	
	public function exportEmails() {
		
		$this->check_db();
		
		$sql = "SELECT email_id FROM " . DB_PREFIX . "subscribe";
			
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	

	
	public function getTotalEmails($data) {
		
		$this->check_db();
		
		$sql = "SELECT * FROM " . DB_PREFIX . "subscribe";
			
		$query = $this->db->query($sql);
		
		return $query->num_rows;
	}
	public function checkmail($data) {
	  
	 $sql = "SELECT * FROM " . DB_PREFIX . "subscribe WHERE email_id='".$data."'";
			
				
		$query = $this->db->query($sql);
		
		return $query->num_rows;
	}
	
	

}
?>