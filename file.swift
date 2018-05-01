class outfit {
	var tags:[String] = [];

	func AddTagItem(tag:String) -> String {
		tags.append(tag);
		return tag;
	}

	func RemoveTag(tag:String) -> String {
		for item in tags {
			if tags[item] == tag {
			
			}
		}
		return tag;
	}
}
