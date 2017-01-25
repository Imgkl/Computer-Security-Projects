.class public Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
.super Ljava/lang/Object;
.source "BadgeViewHolder.java"


# static fields
.field public static final MAX_COUNT:I = 0x63


# instance fields
.field public badge:Lcom/readystatesoftware/viewbadger/BadgeView;

.field public ib:Landroid/widget/ImageView;

.field public module:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field public tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;Landroid/view/animation/Animation;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .param p3, "isMyInboxOutOfMyEvent"    # Z

    .prologue
    .line 54
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v1, v2, :cond_0

    .line 55
    const/4 v0, -0x1

    .line 60
    .local v0, "badgeCount":I
    :goto_0
    if-lez v0, :cond_2

    .line 61
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->badge_grid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 63
    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    const-string v2, "99+"

    invoke-virtual {v1, v2}, Lcom/readystatesoftware/viewbadger/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {v1, p2}, Lcom/readystatesoftware/viewbadger/BadgeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 70
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {v1}, Lcom/readystatesoftware/viewbadger/BadgeView;->show()V

    .line 74
    :goto_2
    return-void

    .line 57
    .end local v0    # "badgeCount":I
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getBadgeCount()I

    move-result v0

    .restart local v0    # "badgeCount":I
    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/readystatesoftware/viewbadger/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {v1}, Lcom/readystatesoftware/viewbadger/BadgeView;->hide()V

    goto :goto_2
.end method

.method public processForList(Landroid/content/Context;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getBadgeCount()I

    move-result v0

    .line 78
    .local v0, "badgeCount":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 80
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    const-string v2, "99+"

    invoke-virtual {v1, v2}, Lcom/readystatesoftware/viewbadger/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {v1, p2}, Lcom/readystatesoftware/viewbadger/BadgeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {v1}, Lcom/readystatesoftware/viewbadger/BadgeView;->show()V

    .line 91
    :goto_1
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/readystatesoftware/viewbadger/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-virtual {v1}, Lcom/readystatesoftware/viewbadger/BadgeView;->hide()V

    goto :goto_1
.end method
