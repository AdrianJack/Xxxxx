-- {"id":1308639962,"ver":"1.0.0","libVer":"1.0.0","author":"Jobobby04","dep":["ReadWN>=1.0.11"]}

local GENRES = {
	"All",
	"Action",
	"Adult",
	"Adventure",
	"Comedy",
	"Contemporary Romance",
	"Drama",
	"Eastern Fantasy",
	"Ecchi",
	"Fantasy",
	"Fantasy Romance",
	"Gender Bender",
	"Harem",
	"Historical",
	"Horror",
	"Josei",
	"Lolicon",
	"Magical Realism",
	"Martial Arts",
	"Mature",
	"Mecha",
	"Mystery",
	"Psychological",
	"Romance",
	"School Life",
	"Sci-fi",
	"Seinen",
	"Shoujo",
	"Shounen",
	"Shounen Ai",
	"Slice of Life",
	"Smut",
	"Sports",
	"Supernatural",
	"Tragedy",
	"Video Games",
	"Wuxia",
	"Xianxia",
	"Xuanhuan",
	"Yaoi",
	"Two-dimensional",
	"Erciyuan",
	"Fan-Fiction",
	"Game",
	"Military",
	"Urban Life",
	"Yuri",
	"Chinese",
	"Korean",
	"Japanese",
	"Isekai",
	"Magic",
	"Shoujo Ai",
	"Urban",
	"Virtual Reality"
}

return Require("FanNovel")("https://www.fannovels.com", {
	id = 1308639962,
	name = "FanNovel",
	imageURL = "https://raw.githubusercontent.com/Adrianjack/Shosetsu-extensions/main/Icons/Picsart_24-03-17_11-26-04-475.png",
	shrinkURLNovel = "^.-fannovels%.com",
	hasCloudFlare = true,

	genres = GENRES,

	listingsMap = {
	
		{
			name = "New to Web Novels",
			increments = true,
			url = function(data)
				return "https://www.fannovels.com/list/all/all-newstime-" .. (data[PAGE] - 1) .. ".html"
			end
		}
	},
})
