.class Lcom/eventgenie/android/ui/searchui/ThreeStateButton$1;
.super Ljava/lang/Object;
.source "ThreeStateButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/searchui/ThreeStateButton;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$1;->this$0:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$1;->this$0:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    # invokes: Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->nextState()V
    invoke-static {v0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->access$000(Lcom/eventgenie/android/ui/searchui/ThreeStateButton;)V

    .line 89
    return-void
.end method
