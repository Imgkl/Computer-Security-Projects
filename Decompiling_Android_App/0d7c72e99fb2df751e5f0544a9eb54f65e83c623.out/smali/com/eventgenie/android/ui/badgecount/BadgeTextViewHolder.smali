.class public Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
.super Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
.source "BadgeTextViewHolder.java"


# static fields
.field private static final MAX_COUNT:I = 0x63


# instance fields
.field public badge:Lcom/readystatesoftware/viewbadger/BadgeView;

.field public badgeTv:Landroid/widget/TextView;

.field public ib:Landroid/widget/ImageView;

.field public module:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field public tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getBadgeCount()I

    move-result v0

    .line 52
    .local v0, "badgeCount":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 54
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->badgeTv:Landroid/widget/TextView;

    const-string v2, "99+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->badgeTv:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->badgeTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_1
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->badgeTv:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->badgeTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
