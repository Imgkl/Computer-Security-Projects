.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$2;
.super Ljava/lang/Object;
.source "Map2DActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$2;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$2;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoomOut()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    .line 564
    return-void
.end method
