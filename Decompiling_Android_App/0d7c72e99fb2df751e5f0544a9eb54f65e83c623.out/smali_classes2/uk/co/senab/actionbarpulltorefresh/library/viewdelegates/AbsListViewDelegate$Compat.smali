.class Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$Compat;
.super Ljava/lang/Object;
.source "AbsListViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Compat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 74
    const/4 v0, 0x2

    return v0
.end method

.method static isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
