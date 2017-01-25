.class public Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "YouTubeDetailsActivity.java"


# static fields
.field public static final VIDEO_ID_EXTRA:Ljava/lang/String; = "video"

.field private static durationFormat:Ljava/text/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field public static final youtubeFormat:Ljava/text/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private mShareUrl:Ljava/lang/String;

.field private mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->youtubeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->durationFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->durationFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static doFormat(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "timeManagementFormat"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    :try_start_0
    sget-object v2, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->youtubeFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 178
    .local v0, "d":Ljava/util/Date;
    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, p0, v2, v3}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDateTimeWithSpecificFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 181
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v0, Lcom/eventgenie/android/R$layout;->activity_details_youtube:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    sget v0, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 85
    .local v6, "wv":Landroid/webkit/WebView;
    sget v0, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 87
    .local v5, "image":Landroid/widget/ImageView;
    sget v0, Lcom/eventgenie/android/R$id;->article_subject:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "title":Landroid/widget/TextView;
    sget v0, Lcom/eventgenie/android/R$id;->article_timestamp:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 89
    .local v3, "timestamp":Landroid/widget/TextView;
    sget v0, Lcom/eventgenie/android/R$id;->article_meta:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 91
    .local v4, "meta":Landroid/widget/TextView;
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 94
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 95
    .local v7, "b":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 97
    const-string/jumbo v0, "video"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "videoId":Ljava/lang/String;
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/webkit/WebView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v1, v10

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    .end local v9    # "videoId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    sget v3, Lcom/eventgenie/android/R$string;->youtube_share:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "subject":Ljava/lang/String;
    new-instance v0, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v0, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 163
    .local v0, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {v0, p1, v2, v1}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onThumbnailClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 168
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 172
    return-void
.end method
