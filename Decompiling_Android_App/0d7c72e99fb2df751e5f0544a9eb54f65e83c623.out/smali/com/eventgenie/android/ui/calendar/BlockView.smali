.class public Lcom/eventgenie/android/ui/calendar/BlockView;
.super Landroid/widget/Button;
.source "BlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/calendar/BlockView$1;
    }
.end annotation


# static fields
.field protected static final ALPHA_GONE:I = 0x0

.field protected static final ALPHA_VISIBLE:I = 0xff

.field protected static final DISABLED_BLOCK_ALPHA:I = 0xa0

.field private static final DRAWABLE_LAYER_AGENDA:I = 0x4

.field private static final DRAWABLE_LAYER_AGENDA_AND_NOTE:I = 0x6

.field private static final DRAWABLE_LAYER_BODY:I = 0x0

.field private static final DRAWABLE_LAYER_BORDER:I = 0x2

.field private static final DRAWABLE_LAYER_MEETING:I = 0x3

.field private static final DRAWABLE_LAYER_MEETING_ADHOC:I = 0x9

.field private static final DRAWABLE_LAYER_MEETING_CONFIRMED:I = 0x7

.field private static final DRAWABLE_LAYER_MEETING_PENDING:I = 0x8

.field private static final DRAWABLE_LAYER_NOTE:I = 0x5

.field private static final DRAWABLE_LAYER_TARGET:I = 0x1

.field private static final DRAWABLE_THREE_DOTS:I = 0xa

.field public static final SPANNING_COLUMN:I = -0x1


# instance fields
.field private final mBlockId:J

.field protected final mColour:Ljava/lang/String;

.field private final mColourAdhocMeeting:I

.field private final mColourMeetingConfirmed:I

.field private final mColourMeetingPending:I

.field private final mColumn:I

.field private final mEndTime:J

.field private final mItemType:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

.field private final mShowAgenda:Z

.field private final mShowNote:Z

.field private final mShowThreeDots:Z

.field private final mShowWaitlistLabel:Z

.field private final mStartTime:J

.field private final mStatus:Ljava/lang/Integer;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;JJZZZLcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ILjava/lang/String;Ljava/lang/Integer;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockId"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "showAgenda"    # Z
    .param p10, "showNote"    # Z
    .param p11, "showThreeDots"    # Z
    .param p12, "itemType"    # Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .param p13, "column"    # I
    .param p14, "colour"    # Ljava/lang/String;
    .param p15, "status"    # Ljava/lang/Integer;
    .param p16, "showWaitlistLabel"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 94
    iput-wide p2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mBlockId:J

    .line 95
    invoke-static {p4}, Lcom/eventgenie/android/ui/calendar/BlockView;->sanitiseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mTitle:Ljava/lang/String;

    .line 96
    iput-wide p5, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStartTime:J

    .line 97
    iput-wide p7, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mEndTime:J

    .line 98
    iput-boolean p9, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowAgenda:Z

    .line 99
    iput-boolean p10, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowNote:Z

    .line 100
    iput-boolean p11, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowThreeDots:Z

    .line 101
    move/from16 v0, p13

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColumn:I

    .line 102
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColour:Ljava/lang/String;

    .line 103
    iput-object p12, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mItemType:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 104
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStatus:Ljava/lang/Integer;

    .line 105
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowWaitlistLabel:Z

    .line 107
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/calendar/BlockView;->setHeight(I)V

    .line 108
    iget-object v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/calendar/BlockView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->meeting_confirmed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColourMeetingConfirmed:I

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->meeting_pending:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColourMeetingPending:I

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->meeting_adhoc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColourAdhocMeeting:I

    .line 114
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/calendar/BlockView;->setLookAndFeel(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private static sanitiseText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p0, :cond_0

    const-string p0, ""

    .line 252
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private setupMeetingsIcon(Landroid/graphics/drawable/LayerDrawable;)V
    .locals 5
    .param p1, "buttonDrawable"    # Landroid/graphics/drawable/LayerDrawable;

    .prologue
    const/4 v4, 0x0

    .line 195
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 197
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 200
    const/4 v1, -0x1

    .line 201
    .local v1, "layerToMakeVisible":I
    const/4 v0, 0x0

    .line 204
    .local v0, "colorFilter":Ljava/lang/Integer;
    sget-object v2, Lcom/eventgenie/android/ui/calendar/BlockView$1;->$SwitchMap$com$eventgenie$android$ui$help$SessionHelper$ScheduleItemType:[I

    iget-object v3, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mItemType:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 231
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 237
    :goto_1
    if-ltz v1, :cond_1

    .line 238
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    :cond_1
    return-void

    .line 206
    :pswitch_0
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mItemType:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    sget-object v3, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    if-ne v2, v3, :cond_0

    .line 207
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStatus:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 208
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 209
    :cond_2
    iget v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColourMeetingConfirmed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    const/4 v1, 0x7

    goto :goto_0

    .line 211
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 212
    iget v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColourMeetingPending:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    const/16 v1, 0x8

    goto :goto_0

    .line 215
    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    .line 218
    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    .line 223
    :pswitch_1
    const/16 v1, 0x9

    .line 224
    iget v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColourAdhocMeeting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBlockId()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mBlockId:J

    return-wide v0
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColumn:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mEndTime:J

    return-wide v0
.end method

.method public getItemType()Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mItemType:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStartTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDisabled()V
    .locals 3

    .prologue
    const/16 v2, 0xa0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/calendar/BlockView;->setFocusable(Z)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/calendar/BlockView;->setEnabled(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 145
    .local v0, "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 146
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 147
    return-void
.end method

.method protected setLookAndFeel(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xff

    const/4 v6, 0x0

    .line 150
    const/4 v3, -0x1

    .line 151
    .local v3, "textColor":I
    const/4 v0, -0x1

    .line 153
    .local v0, "accentColor":I
    const/high16 v3, -0x1000000

    .line 154
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/calendar/BlockView;->setTextColor(I)V

    .line 155
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->setGravity(I)V

    .line 156
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->setTextSize(F)V

    .line 160
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/calendar/BlockView;->setAllCaps(Z)V

    .line 162
    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowWaitlistLabel:Z

    iget-object v7, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->waitlist_label:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v4, p0, v7, v8}, Lcom/eventgenie/android/ui/help/UIUtils;->setWaitlistLabel(Landroid/content/Context;ZLandroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColour:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColour:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x7

    if-ne v4, v7, :cond_0

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColour:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/eventgenie/android/R$drawable;->btn_block:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 178
    .local v1, "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowThreeDots:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowAgenda:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowNote:Z

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 181
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowThreeDots:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowNote:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowAgenda:Z

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 182
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowThreeDots:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowNote:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowAgenda:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 185
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-boolean v7, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mShowThreeDots:Z

    if-eqz v7, :cond_4

    :goto_4
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    invoke-direct {p0, v1}, Lcom/eventgenie/android/ui/calendar/BlockView;->setupMeetingsIcon(Landroid/graphics/drawable/LayerDrawable;)V

    .line 190
    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 191
    return-void

    .line 171
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    move v4, v6

    .line 180
    goto :goto_1

    :cond_2
    move v4, v6

    .line 181
    goto :goto_2

    :cond_3
    move v4, v6

    .line 182
    goto :goto_3

    :cond_4
    move v5, v6

    .line 185
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockView [mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mItemType:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mColumn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBlockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mBlockId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/ui/calendar/BlockView;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
