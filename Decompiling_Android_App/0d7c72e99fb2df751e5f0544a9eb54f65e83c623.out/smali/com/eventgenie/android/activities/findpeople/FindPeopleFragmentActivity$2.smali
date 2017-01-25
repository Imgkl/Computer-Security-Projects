.class Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$2;
.super Ljava/lang/Object;
.source "FindPeopleFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addNetworkingNotEnabledPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$2;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$2;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->onProfileClick(Landroid/view/View;)V

    .line 205
    return-void
.end method
