package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="tags")]
  [Bindable]
  public class Tag extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function Tag() {
      super(LABEL);
    }
  }
}
