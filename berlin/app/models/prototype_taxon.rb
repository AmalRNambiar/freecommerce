class PrototypeTaxon < Base
  belongs_to :taxon, class_name: 'Taxon'
  belongs_to :prototype, class_name: 'Spree::Prototype'

  validates :prototype, :taxon, presence: true
  validates :prototype_id, uniqueness: { scope: :taxon_id }
end
