class Meta < ActiveRecord::Base

  has_many :meta_detalhes, :dependent => :destroy

  validates :moeda, :periodo_final, :periodo_inicio, :status, :presence => true

  before_save :finds

  def finds

  	#busca setor
	  set = Setor.find_by_id(self.setor_id);
	  self.setor_nome = set.nome.to_s unless self.setor_id.blank?
	  
	end
  
end
