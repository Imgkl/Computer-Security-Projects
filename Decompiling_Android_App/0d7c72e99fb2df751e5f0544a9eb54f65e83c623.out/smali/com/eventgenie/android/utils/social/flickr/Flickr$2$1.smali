.class Lcom/eventgenie/android/utils/social/flickr/Flickr$2$1;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr$2;->handleResponse(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$2;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$2;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$2$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$2$1;->this$1:Lcom/eventgenie/android/utils/social/flickr/Flickr$2;

    iget-object v0, v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$2;->val$location:Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;

    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->parsePhotoLocation(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;)V
    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$400(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;)V

    .line 322
    return-void
.end method
