.class Lcom/eventgenie/android/activities/mapping/RouteActivity$2;
.super Ljava/lang/Object;
.source "RouteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/RouteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/RouteActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/RouteActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity$2;->this$0:Lcom/eventgenie/android/activities/mapping/RouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity$2;->this$0:Lcom/eventgenie/android/activities/mapping/RouteActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->OpenEntityPicker(I)V

    .line 152
    return-void
.end method
