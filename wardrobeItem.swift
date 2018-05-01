class outfitClass {
    :let tags[String] = [];
    var imageItem = UIImage(named: "wardrobeItem");
    func addTagsItem(item: String) {
        tags.append(item);
    } 
    func removeTagsItem(item: String) -> Array<String> {
        
    }
    func getImage()-> UIImage {
        return imageItem;
    }
    func setImage() {
        UIImage.image = UIImage(named: "newWardrobeItem");
    }
    
}
