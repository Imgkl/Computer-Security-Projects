.class public Lcom/eventgenie/android/ui/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# instance fields
.field private scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;

    .line 46
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/eventgenie/android/ui/ScrollViewListener;->onScrollChanged(Landroid/view/View;IIII)V

    .line 62
    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/eventgenie/android/ui/ScrollViewListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollViewListener:Lcom/eventgenie/android/ui/ScrollViewListener;

    .line 54
    return-void
.end method
