.class Lcom/eventgenie/android/activities/products/FullScreenCarousel$2;
.super Ljava/lang/Object;
.source "FullScreenCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/products/FullScreenCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$2;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$2;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    const/4 v1, 0x0

    # invokes: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->changeVisibility(Z)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$700(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Z)V

    .line 111
    return-void
.end method
