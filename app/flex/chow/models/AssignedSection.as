package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="assigned_sections")]
  [Bindable]
  public class AssignedSection extends RxModel {
    public static const LABEL:String = "articleId";

    public var articleId:int = 0;

    public var sectionId:int = 0;

    public var position:int = 0;

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function AssignedSection() {
      super(LABEL);
    }
  }
}
