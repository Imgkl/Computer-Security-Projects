.class Lcom/eventgenie/android/utils/social/flickr/Flickr$7$1;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr$7;->handleResponse(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$7;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$7;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$7;

    iget-object v0, v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;->val$updated:[Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$7;

    iget-object v2, v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;->val$reference:Ljava/util/Calendar;

    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseUpdated(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Calendar;)Z
    invoke-static {p1, v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$900(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Calendar;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 528
    return-void
.end method
