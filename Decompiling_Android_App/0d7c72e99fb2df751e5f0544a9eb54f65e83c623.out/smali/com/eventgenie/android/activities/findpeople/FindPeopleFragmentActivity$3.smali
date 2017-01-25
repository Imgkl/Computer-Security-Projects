.class Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$3;
.super Ljava/lang/Object;
.source "FindPeopleFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->addNotLoggedInPage(Ljava/lang/String;)V
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
    .line 218
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$3;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$3;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    # invokes: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->populateView()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$000(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    .line 223
    return-void
.end method
