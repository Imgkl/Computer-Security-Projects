.class Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$5;
.super Ljava/lang/Object;
.source "SessionFilterActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$5;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$5;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->onSearchClick(Landroid/view/View;)V

    .line 268
    const/4 v0, 0x1

    return v0
.end method
