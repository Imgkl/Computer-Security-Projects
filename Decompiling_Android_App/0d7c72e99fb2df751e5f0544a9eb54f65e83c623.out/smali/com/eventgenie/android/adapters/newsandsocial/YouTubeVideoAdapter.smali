.class public Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;
.super Landroid/widget/SimpleAdapter;
.source "YouTubeVideoAdapter.java"


# static fields
.field private static final durationFormat:Ljava/text/DateFormat;

.field private static final youtubeFormat:Ljava/text/DateFormat;


# instance fields
.field private final mDateUtils:Lcom/eventgenie/android/utils/social/StatusDateUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;->youtubeFormat:Ljava/text/DateFormat;

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;->durationFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 61
    invoke-static {p1}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getInstance(Landroid/content/Context;)Lcom/eventgenie/android/utils/social/StatusDateUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;->mDateUtils:Lcom/eventgenie/android/utils/social/StatusDateUtils;

    .line 62
    return-void
.end method


# virtual methods
.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->video:I

    if-ne v0, v1, :cond_0

    .line 68
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->date:I

    if-ne v3, v4, :cond_0

    .line 83
    :try_start_0
    sget-object v3, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;->youtubeFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 84
    .local v0, "d":Ljava/util/Date;
    iget-object v3, p0, Lcom/eventgenie/android/adapters/newsandsocial/YouTubeVideoAdapter;->mDateUtils:Lcom/eventgenie/android/utils/social/StatusDateUtils;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getTimeDiffString(J)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "dateString":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dateString":Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
