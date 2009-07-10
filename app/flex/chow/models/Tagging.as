package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="taggings")]
  [Bindable]
  public class Tagging extends RxModel {
    public static const LABEL:String = "tagId";

    public var tagId:int = 0;

    public var taggableId:int = 0;

    public var taggableType:String = "";

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function Tagging() {
      super(LABEL);
    }
  }
}
