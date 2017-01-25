.class public Lcom/eventgenie/android/ui/calendar/BlockHeaderView;
.super Lcom/eventgenie/android/ui/calendar/BlockView;
.source "BlockHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;JJZZZILjava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockId"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "containsFavourites"    # Z
    .param p10, "containsNotes"    # Z
    .param p11, "showThreeDots"    # Z
    .param p12, "column"    # I
    .param p13, "colour"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v13, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v17}, Lcom/eventgenie/android/ui/calendar/BlockView;-><init>(Landroid/content/Context;JLjava/lang/String;JJZZZLcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ILjava/lang/String;Ljava/lang/Integer;Z)V

    .line 47
    return-void
.end method


# virtual methods
.method protected setLookAndFeel(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 52
    const/4 v2, -0x1

    .line 53
    .local v2, "textColor":I
    const/4 v0, -0x1

    .line 55
    .local v0, "accentColor":I
    iget-object v3, p0, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->mColour:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->mColour:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 56
    iget-object v3, p0, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->mColour:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 59
    :cond_0
    const/4 v2, -0x1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->btn_block_track_header:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 63
    .local v1, "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 65
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->setTextColor(I)V

    .line 69
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->setGravity(I)V

    .line 71
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->setTextSize(F)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->setMaxLines(I)V

    .line 74
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method
