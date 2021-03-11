import 'dart:convert';

class Articletest {
  final String text;
  final String url;
  final String by;
  final String time;
  final int score;
  final int commentsCount;

  const Articletest(
      {this.text,
        this.url,
        this.by,
        this.time,
        this.score,
        this.commentsCount});
  factory Articletest.fromJson(Map<String, dynamic> json){
    if(json==null){
      return null;
    }
    return Articletest(
      text: json['test'] ?? null,
      url: json['url'],
      by: json['by'],
      time: json['time'],
      commentsCount: json['commentsCounts'],
      score: json['score'],


    );
  }
   List<int> parseTopStories(String jsonStr){
    final parsed = json.decode((jsonStr));
    final listOfIds = List<int>.from(parsed);
    return listOfIds;
   }
 Articletest parseArticle(String jsonStr){
    final parsed= json.decode(jsonStr);
    final article = Articletest.fromJson(parsed);
    return article;
 }
}

final articles = [
  new Articletest(
    text:
    "Circular Shock Acoustic Waves in Ionosphere Triggered by Launch of Formosat‐5",
    url: "wiley.com",
    by: "zdw",
    time: "3 hours",
    score: 177,
    commentsCount: 62,
  ),
  new Articletest(
    text: "BMW says electric car mass production not viable until 2020",
    url: "reuters.com",
    by: "Mononokay",
    time: "2 hours",
    score: 81,
    commentsCount: 128,
  ),
  new Articletest(
    text: "Evolution Is the New Deep Learning",
    url: "sentient.ai",
    by: "jonbaer",
    time: "4 hours",
    score: 200,
    commentsCount: 87,
  ),
  new Articletest(
    text: "TCP Tracepoints have arrived in Linux",
    url: "brendangregg.com",
    by: "brendangregg",
    time: "1 hour",
    score: 35,
    commentsCount: 0,
  ),
  new Articletest(
    text:
    "Section 230: A Key Legal Shield for Facebook, Google Is About to Change",
    url: "npr.org",
    by: "Mononokay",
    time: "5 hours",
    score: 156,
    commentsCount: 66,
  ),
  new Articletest(
    text: "A Visiting Star Jostled Our Solar System 70,000 Years Ago",
    url: "gizmodo.com",
    by: "rbanffy",
    time: "7 hours",
    score: 175,
    commentsCount: 60,
  ),
  new Articletest(
    text: "Cow Game Extracted Facebook Data",
    url: "theatlantic.com",
    by: "jameshart",
    time: "1 hour",
    score: 125,
    commentsCount: 56,
  ),
  new Articletest(
    text: "Ask HN: How do you find freelance work?",
    url: "",
    by: "i_am_nobody",
    time: "2 hours",
    score: 82,
    commentsCount: 43,
  ),
  new Articletest(
    text:
    "Hedge-fund managers that do the most research will post the best returns",
    url: "cnbc.com",
    by: "anonu",
    time: "6 hours",
    score: 149,
    commentsCount: 126,
  ),
  new Articletest(
    text:
    "Number systems of the world, sorted by complexity of counting (2006)",
    url: "airnet.ne.jp",
    by: "ColinWright",
    time: "8 hours",
    score: 196,
    commentsCount: 90,
  ),
  new Articletest(
    text: "MIT’s new device can pull water from desert air",
    url: "techcrunch.com",
    by: "evo_9",
    time: "43 minutes",
    score: 11,
    commentsCount: 11,
  ),
  new Articletest(
    text: "GitLab 10.6 released with CI/CD for GitHub",
    url: "gitlab.com",
    by: "rbanffy",
    time: "4 hours",
    score: 177,
    commentsCount: 62,
  ),
  new Articletest(
    text: "Next-Gen Display: MicroLEDs",
    url: "ieee.org",
    by: "rbanffy",
    time: "5 hours",
    score: 72,
    commentsCount: 39,
  ),
  new Articletest(
    text:
    "Power 9 May Dent X86 Servers: Alibaba, Google, Tencent Test IBM Systems",
    url: "eetimes.com",
    by: "bcaulfield",
    time: "3 hours",
    score: 52,
    commentsCount: 50,
  ),
  new Articletest(
    text:
    "Show HN: Transfer files to mobile device by scanning a QR code from the terminal",
    url: "github.com",
    by: "daw___",
    time: "7 hours",
    score: 143,
    commentsCount: 35,
  ),
  new Articletest(
    text: "Types of People Startups Should Hire, but Don’t",
    url: "trifinlabs.com",
    by: "Shanerostad",
    time: "1 hour",
    score: 31,
    commentsCount: 27,
  ),
  new Articletest(
    text: "Steinhaus Longimeter",
    url: "fairfield.edu",
    by: "ColinWright",
    time: "8 hours",
    score: 85,
    commentsCount: 16,
  ),
  new Articletest(
    text:
    "Data on 1.2M Facebook users from 2005 (2011) [use archive.org url in thread]",
    url: "michaelzimmer.org",
    by: "feelin_googley",
    time: "1 hour",
    score: 72,
    commentsCount: 19,
  ),
  new Articletest(
    text: "The Myth of Authenticity Is Killing Tex-Mex",
    url: "eater.com",
    by: "samclemens",
    time: "10 hours",
    score: 121,
    commentsCount: 128,
  ),
  new Articletest(
    text: "Show HN: Asynchronous HTTP/2 client for Python 2.7",
    url: "github.com",
    by: "vsmhn",
    time: "8 hours",
    score: 75,
    commentsCount: 51,
  ),
  new Articletest(
    text: "Fractions in the Farey Sequences and the Stern-Brocot Tree",
    url: "surrey.ac.uk",
    by: "fanf2",
    time: "6 hours",
    score: 45,
    commentsCount: 7,
  ),
  new Articletest(
    text: "Understanding CPU port contention",
    url: "dendibakh.github.io",
    by: "matt_d",
    time: "10 hours",
    score: 96,
    commentsCount: 13,
  ),
  new Articletest(
    text:
    "Krita 4.0 – A painting app for cartoonists, illustrators, and concept artists",
    url: "krita.org",
    by: "reddotX",
    time: "9 hours",
    score: 435,
    commentsCount: 125,
  ),
  new Articletest(
    text: "Cutting ‘Old Heads’ at IBM",
    url: "propublica.org",
    by: "mwexler",
    time: "7 hours",
    score: 287,
    commentsCount: 240,
  ),
  new Articletest(
    text: "Where to Score: Classified Ads from Haight-Ashbury",
    url: "theparisreview.org",
    by: "tintinnabula",
    time: "7 hours",
    score: 47,
    commentsCount: 12,
  ),
  new Articletest(
    text:
    "TravisBuddy: Adds comments to failed pull requests, tells author what went wrong",
    url: "github.com",
    by: "bluzi",
    time: "8 hours",
    score: 37,
    commentsCount: 26,
  ),
  new Articletest(
    text: "Using Technical Debt in Your Favor",
    url: "gitconnected.com",
    by: "treyhuffine",
    time: "7 hours",
    score: 140,
    commentsCount: 123,
  )
];