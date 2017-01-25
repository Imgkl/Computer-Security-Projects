.class Lcom/eventgenie/android/utils/social/flickr/Flickr$3$1;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr$3;->handleResponse(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$3;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$3;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$3$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$3$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$3;

    iget-object v0, v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$3;->this$0:Lcom/eventgenie/android/utils/social/flickr/Flickr;

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$3$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$3;

    iget-object v1, v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$3;->val$sets:Ljava/util/List;

    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->parsePhotosets(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    invoke-static {v0, p1, v1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$500(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 355
    return-void
.end method
