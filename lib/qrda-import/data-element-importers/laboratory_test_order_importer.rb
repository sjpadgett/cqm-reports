module QRDA
  module Cat1
    class LaboratoryTestOrderImporter < SectionImporter
      def initialize(entry_finder = QRDA::Cat1::EntryFinder.new("./cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.24.3.37']"))
        super(entry_finder)
        @id_xpath = './cda:id'
        @code_xpath = './cda:code'
        @author_datetime_xpath = "./cda:author/cda:time"
        @entry_class = QDM::LaboratoryTestOrder
      end

      def create_entry(entry_element, nrh = NarrativeReferenceHandler.new)
        laboratory_test_order = super
        laboratory_test_order
      end

    end
  end
end