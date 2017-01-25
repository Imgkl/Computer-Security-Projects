.class Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$2;
.super Ljava/lang/Object;
.source "FlickrPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    const/4 v1, 0x0

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->changeVisibility(Z)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$600(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Z)V

    .line 132
    return-void
.end method
