.class public Lcom/eventgenie/android/activities/base/DoNothingActivity;
.super Landroid/app/Activity;
.source "DoNothingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/DoNothingActivity;->finish()V

    .line 41
    return-void
.end method
