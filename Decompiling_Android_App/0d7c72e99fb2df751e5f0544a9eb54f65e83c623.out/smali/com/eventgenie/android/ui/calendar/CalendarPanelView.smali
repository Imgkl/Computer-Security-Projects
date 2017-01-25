.class public Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
.super Landroid/widget/FrameLayout;
.source "CalendarPanelView.java"


# instance fields
.field private mBlocksView:Lcom/eventgenie/android/ui/calendar/BlocksLayout;

.field private mNowView:Landroid/view/View;

.field private mScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v0}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;-><init>(Landroid/content/Context;ZZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHeader"    # Z
    .param p3, "isFavourite"    # Z

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    if-eqz p2, :cond_2

    sget v0, Lcom/eventgenie/android/R$layout;->calendar_header:I

    .line 54
    .local v0, "layout":I
    :goto_0
    if-eqz p3, :cond_0

    .line 55
    sget v0, Lcom/eventgenie/android/R$layout;->my_agenda_calendar_panel:I

    .line 58
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 59
    .local v1, "li":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    sget v2, Lcom/eventgenie/android/R$id;->blocks_scroll:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/ObservableScrollView;

    iput-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    .line 63
    if-eqz p3, :cond_3

    .line 64
    sget v2, Lcom/eventgenie/android/R$id;->blocks:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;

    iput-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mBlocksView:Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    .line 69
    :goto_1
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mBlocksView:Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->setDrawingCacheEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mBlocksView:Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 72
    sget v2, Lcom/eventgenie/android/R$id;->blocks_now:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mNowView:Landroid/view/View;

    .line 73
    if-eqz p2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mNowView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_1
    return-void

    .line 53
    .end local v0    # "layout":I
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :cond_2
    sget v0, Lcom/eventgenie/android/R$layout;->calendar_panel:I

    goto :goto_0

    .line 66
    .restart local v0    # "layout":I
    .restart local v1    # "li":Landroid/view/LayoutInflater;
    :cond_3
    sget v2, Lcom/eventgenie/android/R$id;->blocks:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    iput-object v2, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mBlocksView:Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    goto :goto_1
.end method


# virtual methods
.method public getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mBlocksView:Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    return-object v0
.end method

.method public getNowView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mNowView:Landroid/view/View;

    return-object v0
.end method

.method public getScrollView()Lcom/eventgenie/android/ui/ObservableScrollView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->mScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    return-object v0
.end method
