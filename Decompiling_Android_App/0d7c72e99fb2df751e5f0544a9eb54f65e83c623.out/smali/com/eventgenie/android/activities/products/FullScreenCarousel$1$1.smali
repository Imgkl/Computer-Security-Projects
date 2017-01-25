.class Lcom/eventgenie/android/activities/products/FullScreenCarousel$1$1;
.super Ljava/util/TimerTask;
.source "FullScreenCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$1$1;->this$1:Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$1$1;->this$1:Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;

    iget-object v0, v0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$1;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    # invokes: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->TimerMethod()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$900(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V

    return-void
.end method
