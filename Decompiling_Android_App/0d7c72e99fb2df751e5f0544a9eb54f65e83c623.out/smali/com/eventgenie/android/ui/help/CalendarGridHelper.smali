.class public Lcom/eventgenie/android/ui/help/CalendarGridHelper;
.super Ljava/lang/Object;
.source "CalendarGridHelper.java"


# static fields
.field private static final CELL_FONT_NO_AVAILABILITY:I = 0xc

.field private static final CELL_FONT_SIZE:I = 0x10

.field private static final NUMBER_OF_COLS:I = 0x7


# instance fields
.field private final APP_COLOR:I

.field private final CELL_SIZE_HEIGHT:I

.field private final CELL_SIZE_WIDTH:I

.field private final mActivity:Landroid/app/Activity;

.field private final mGrid:Landroid/support/v7/widget/GridLayout;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMeetingAvailabilitySlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalRows:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/GridLayout;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "grid"    # Landroid/support/v7/widget/GridLayout;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    .line 88
    iput-object p1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    .line 89
    invoke-static {p1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->calculateCellSize(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    .line 90
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    iput v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_HEIGHT:I

    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mMeetingAvailabilitySlots:Ljava/util/Map;

    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDetailsTitleColour()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->APP_COLOR:I

    .line 94
    return-void
.end method

.method private static addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "grid"    # Landroid/support/v7/widget/GridLayout;
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 520
    return-void
.end method

.method private static addViewFullWidth(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;I)V
    .locals 9
    .param p0, "grid"    # Landroid/support/v7/widget/GridLayout;
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "row"    # I

    .prologue
    .line 524
    move v6, p2

    .line 525
    .local v6, "rowStart":I
    const/4 v4, 0x1

    .line 526
    .local v4, "rowSize":I
    const/4 v2, 0x0

    .line 527
    .local v2, "colStart":I
    const/4 v0, 0x7

    .line 529
    .local v0, "colSize":I
    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v5

    .line 530
    .local v5, "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static {v7, v8}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v1

    .line 531
    .local v1, "colSpec":Landroid/support/v7/widget/GridLayout$Spec;
    new-instance v3, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v3, v5, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V

    .line 539
    .local v3, "params":Landroid/support/v7/widget/GridLayout$LayoutParams;
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    return-void
.end method

.method public static calculateCalendarDays(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 8
    .param p0, "givenStartDate"    # Ljava/util/Date;
    .param p1, "givenEndDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v1, "daysToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 549
    .local v3, "startWeekNDay":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 551
    .local v2, "endWeekNDay":Ljava/util/Date;
    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 552
    const/4 v1, 0x0

    .line 608
    .end local v1    # "daysToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .end local v2    # "endWeekNDay":Ljava/util/Date;
    .end local v3    # "startWeekNDay":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v1

    .line 555
    .restart local v1    # "daysToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .restart local v2    # "endWeekNDay":Ljava/util/Date;
    .restart local v3    # "startWeekNDay":Ljava/util/Date;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 557
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 558
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 560
    :goto_1
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 561
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 605
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "endWeekNDay":Ljava/util/Date;
    .end local v3    # "startWeekNDay":Ljava/util/Date;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 564
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "endWeekNDay":Ljava/util/Date;
    .restart local v3    # "startWeekNDay":Ljava/util/Date;
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 566
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 567
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 568
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 570
    :goto_2
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 572
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 575
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 577
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 578
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 580
    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 582
    :cond_4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 587
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    .line 589
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 591
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 592
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 594
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 596
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :goto_4
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 600
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 602
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method private static calculateCellSize(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 612
    invoke-static {p0}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateSmallestWidth(Landroid/app/Activity;)I

    move-result v0

    .line 613
    .local v0, "res":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ CALGRIDWIDTH: SCREEN WIDTH   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ CALGRIDWIDTH: TEXTVIEW WIDTH :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 615
    div-int/lit8 v1, v0, 0x7

    return v1
.end method

.method private static calculateMonthLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 620
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getMonthName(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertDateToJSONString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 626
    invoke-static {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBlankTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getCellButton(Landroid/app/Activity;)Landroid/widget/Button;

    move-result-object v0

    .line 215
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 217
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 219
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const-string v1, "<blank>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 221
    iget v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 222
    return-object v0
.end method

.method private getCellButton(Landroid/app/Activity;)Landroid/widget/Button;
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 630
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->view_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 631
    .local v0, "view":Landroid/widget/Button;
    return-object v0
.end method

.method private static isThisAnEventDate(Ljava/util/Date;Ljava/util/List;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "eventDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toNumericDayString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "dateAsString":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 640
    .local v1, "res":Z
    return v1
.end method

.method private static setWidth(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "width"    # I

    .prologue
    const/4 v0, 0x0

    .line 644
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 645
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 646
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 647
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 648
    return-void
.end method


# virtual methods
.method public addFullLengthLine(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "row"    # I

    .prologue
    .line 97
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 99
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 100
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    mul-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 102
    iget v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    .line 104
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    invoke-static {v1, v0, p2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addViewFullWidth(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;I)V

    .line 105
    return-void
.end method

.method public addFullLengthText(Ljava/lang/String;ZLjava/lang/Integer;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "header"    # Z
    .param p3, "bgColourResourceId"    # Ljava/lang/Integer;
    .param p4, "row"    # I

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 109
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    .line 119
    if-eqz p2, :cond_2

    .line 120
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    :goto_1
    if-eqz p3, :cond_1

    .line 128
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 131
    :cond_1
    iget v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    mul-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 132
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    invoke-static {v1, v0, p4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addViewFullWidth(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;I)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method public formatDayDisplayTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 139
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    invoke-static {p1, v0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 144
    return-void
.end method

.method public formatForDayDisplayButton(Landroid/widget/TextView;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "day"    # Ljava/lang/String;
    .param p3, "isEventDay"    # Z
    .param p4, "clickable"    # Z

    .prologue
    .line 148
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_HEIGHT:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 149
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    invoke-static {p1, v0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    sget v0, Lcom/eventgenie/android/R$drawable;->state_drawable_meeting_calendar_button:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 153
    if-eqz p3, :cond_2

    .line 154
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    :goto_0
    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 164
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayFormat_3:Ljava/text/DateFormat;

    invoke-static {v0, v1, p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    :goto_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 172
    if-eqz p3, :cond_4

    .line 173
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->APP_COLOR:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :goto_2
    if-eqz p4, :cond_1

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_1
    return-void

    .line 157
    :cond_2
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayFormat_3:Ljava/text/DateFormat;

    invoke-static {v0, p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->calendargrid_day_unselectable_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public formatForDisabled(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 187
    sget v0, Lcom/eventgenie/android/R$drawable;->button_calendar_no_availability:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 188
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    invoke-static {p1, v0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 189
    return-void
.end method

.method public formatForNoAvailability(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    sget v0, Lcom/eventgenie/android/R$drawable;->button_calendar_no_availability:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 194
    iget v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->CELL_SIZE_WIDTH:I

    invoke-static {p1, v0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->setWidth(Landroid/widget/TextView;I)V

    .line 195
    return-void
.end method

.method public getAvailabilityForDay(Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    .locals 3
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 210
    .local v0, "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    :goto_0
    return-object v0

    .line 203
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mMeetingAvailabilitySlots:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    goto :goto_0

    .line 206
    .end local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mMeetingAvailabilitySlots:Ljava/util/Map;

    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    invoke-static {v2, p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;

    .restart local v0    # "res":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    goto :goto_0
.end method

.method public getSelectedDatesTags()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "days":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public populate(Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;Ljava/util/Set;)V
    .locals 24
    .param p1, "payload"    # Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "eventDaysFromServer":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;->getAvailability()Ljava/util/ArrayList;

    move-result-object v21

    if-nez v21, :cond_2

    .line 395
    :cond_0
    const-string v21, "^ CALGRIDHELP: Availability Payload is Blank!"

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;->getDaysToDisplay()Ljava/util/ArrayList;

    move-result-object v11

    .line 399
    .local v11, "daysToDisplayFromServer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 400
    const-string v21, "^ CALGRIDHELP: Days to display are less than 7"

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_3
    const/4 v7, 0x0

    .line 405
    .local v7, "col":I
    const/16 v18, 0x0

    .line 410
    .local v18, "row":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v10, "daysToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 413
    .local v9, "day":Ljava/lang/String;
    sget-object v21, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 414
    .local v17, "numericDate":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 419
    .end local v9    # "day":Ljava/lang/String;
    .end local v17    # "numericDate":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 420
    .local v12, "eventDays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 421
    .restart local v9    # "day":Ljava/lang/String;
    sget-object v21, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 422
    .restart local v17    # "numericDate":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 427
    .end local v9    # "day":Ljava/lang/String;
    .end local v17    # "numericDate":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;->getAvailability()Ljava/util/ArrayList;

    move-result-object v6

    .line 428
    .local v6, "availabilityList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;

    .line 429
    .local v5, "avail":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    sget-object v21, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->getEventDay()Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getFrom()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 430
    .restart local v17    # "numericDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mMeetingAvailabilitySlots:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 435
    .end local v5    # "avail":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    .end local v17    # "numericDate":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    .local v8, "currentItem":I
    :goto_4
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ge v8, v0, :cond_7

    .line 436
    div-int/lit8 v18, v8, 0x7

    .line 437
    mul-int/lit8 v21, v18, 0x7

    sub-int v7, v8, v21

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getCellButton(Landroid/app/Activity;)Landroid/widget/Button;

    move-result-object v20

    .line 440
    .local v20, "view":Landroid/widget/TextView;
    sget-object v22, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    sget-object v23, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayNameFormat:Ljava/text/DateFormat;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatDayDisplayTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 435
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 449
    .end local v20    # "view":Landroid/widget/TextView;
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthLine(II)V

    .line 452
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->calculateMonthLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 453
    .local v16, "lastMonthName":Ljava/lang/String;
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    move/from16 v23, v0

    add-int v23, v23, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthText(Ljava/lang/String;ZLjava/lang/Integer;I)V

    .line 461
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 462
    .restart local v9    # "day":Ljava/lang/String;
    div-int/lit8 v18, v8, 0x7

    .line 463
    mul-int/lit8 v21, v18, 0x7

    sub-int v7, v8, v21

    .line 465
    invoke-static {v9}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->calculateMonthLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 467
    .local v19, "thisMonthName":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 468
    rsub-int/lit8 v15, v7, 0x7

    .line 470
    .local v15, "itemsBeforeLabel":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    if-ge v13, v15, :cond_8

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getBlankTextView()Landroid/widget/TextView;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 470
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 474
    :cond_8
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    move/from16 v23, v0

    add-int v23, v23, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthText(Ljava/lang/String;ZLjava/lang/Integer;I)V

    .line 475
    move-object/from16 v16, v19

    .line 477
    const/16 v21, 0x7

    move/from16 v0, v21

    if-eq v7, v0, :cond_9

    .line 478
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v7, :cond_9

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getBlankTextView()Landroid/widget/TextView;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 478
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 484
    .end local v13    # "i":I
    .end local v15    # "itemsBeforeLabel":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getCellButton(Landroid/app/Activity;)Landroid/widget/Button;

    move-result-object v20

    .line 485
    .restart local v20    # "view":Landroid/widget/TextView;
    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDayDisplayButton(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 487
    add-int/lit8 v8, v8, 0x1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mMeetingAvailabilitySlots:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;

    .line 490
    .restart local v5    # "avail":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    if-eqz v5, :cond_c

    .line 491
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->getTimeSlots()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_a

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->getTimeSlots()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 493
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForNoAvailability(Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 495
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/genie_connect/android/utils/string/StringUtils;->BULLET_CHARACTER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 499
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDisabled(Landroid/widget/TextView;)V

    goto/16 :goto_5
.end method

.method public populate(Lorg/json/JSONObject;Z)V
    .locals 35
    .param p1, "mUserProfile"    # Lorg/json/JSONObject;
    .param p2, "clickable"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    const-string v32, "attendingDays"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    if-nez v32, :cond_2

    .line 242
    :cond_0
    const-string v32, "^ CALGRIDHELP: mUserProfile is Invalid!"

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v11

    .line 245
    .local v11, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v18, "eventDays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v6, "LabelToDate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v5, "DateToLabel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v32, "attendingDays"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 250
    .local v7, "availability":Lorg/json/JSONArray;
    :goto_1
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v32

    if-nez v32, :cond_4

    .line 251
    const-string v32, "name"

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 252
    .local v25, "name":Ljava/lang/String;
    const-string v32, "runningTime_from"

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 254
    .local v29, "time":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 256
    invoke-static/range {v29 .. v29}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toNumericDayString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, "dayOnly":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v17    # "dayOnly":Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 267
    .end local v25    # "name":Ljava/lang/String;
    .end local v29    # "time":Ljava/lang/String;
    :cond_4
    invoke-static {v11}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 269
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v8, "availabilitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 273
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 274
    .local v26, "object":Lorg/json/JSONObject;
    if-eqz v26, :cond_5

    .line 276
    const-string v32, "name"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 280
    .end local v26    # "object":Lorg/json/JSONObject;
    :cond_6
    const/16 v26, 0x0

    .line 282
    .restart local v26    # "object":Lorg/json/JSONObject;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_e

    .line 283
    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 284
    .local v14, "day1":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 286
    .local v15, "dayLast":Ljava/lang/String;
    sget-object v32, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertToDate(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v32

    sget-object v33, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertToDate(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->calculateCalendarDays(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v12

    .line 290
    .local v12, "datesToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v32

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_7

    .line 291
    const-string v32, "^ CALGRIDHELP: Days to display are less than 7"

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_7
    const/4 v9, 0x0

    .line 296
    .local v9, "col":I
    const/16 v27, 0x0

    .line 301
    .local v27, "row":I
    const/4 v10, 0x0

    .local v10, "currentItem":I
    :goto_3
    const/16 v32, 0x7

    move/from16 v0, v32

    if-ge v10, v0, :cond_8

    .line 302
    div-int/lit8 v27, v10, 0x7

    .line 303
    mul-int/lit8 v32, v27, 0x7

    sub-int v9, v10, v32

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getCellButton(Landroid/app/Activity;)Landroid/widget/Button;

    move-result-object v31

    .line 306
    .local v31, "view":Landroid/widget/TextView;
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Date;

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->convertDateToJSONString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getShortDayFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 312
    .local v30, "tmpLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatDayDisplayTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 301
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 316
    .end local v30    # "tmpLabel":Ljava/lang/String;
    .end local v31    # "view":Landroid/widget/TextView;
    :cond_8
    const/16 v32, 0x0

    add-int/lit8 v33, v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthLine(II)V

    .line 319
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Date;

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->convertDateToJSONString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->calculateMonthLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 320
    .local v24, "lastMonthName":Ljava/lang/String;
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    move/from16 v34, v0

    add-int v34, v34, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthText(Ljava/lang/String;ZLjava/lang/Integer;I)V

    .line 327
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Date;

    .line 328
    .local v13, "day":Ljava/util/Date;
    invoke-static {v13}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toNumericDayString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 329
    .local v16, "dayName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->isThisAnEventDate(Ljava/util/Date;Ljava/util/List;)Z

    move-result v22

    .line 331
    .local v22, "isEventDay":Z
    div-int/lit8 v27, v10, 0x7

    .line 332
    mul-int/lit8 v32, v27, 0x7

    sub-int v9, v10, v32

    .line 334
    invoke-static {v13}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->convertDateToJSONString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->calculateMonthLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 336
    .local v28, "thisMonthName":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_b

    .line 337
    rsub-int/lit8 v23, v9, 0x7

    .line 338
    .local v23, "itemsBeforeLabel":I
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "^ CALGRIDHELPER: Items before: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x7

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 340
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getBlankTextView()Landroid/widget/TextView;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 340
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 344
    :cond_a
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mTotalRows:I

    move/from16 v34, v0

    add-int v34, v34, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthText(Ljava/lang/String;ZLjava/lang/Integer;I)V

    .line 345
    move-object/from16 v24, v28

    .line 347
    const/16 v32, 0x7

    move/from16 v0, v32

    if-eq v9, v0, :cond_b

    .line 348
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v0, v9, :cond_b

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getBlankTextView()Landroid/widget/TextView;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 348
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 354
    .end local v23    # "itemsBeforeLabel":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getCellButton(Landroid/app/Activity;)Landroid/widget/Button;

    move-result-object v31

    .line 355
    .restart local v31    # "view":Landroid/widget/TextView;
    invoke-static {v13}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->convertDateToJSONString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v22

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDayDisplayButton(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addView(Landroid/support/v7/widget/GridLayout;Landroid/widget/TextView;)V

    .line 362
    add-int/lit8 v10, v10, 0x1

    .line 366
    if-eqz v16, :cond_c

    .line 367
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 368
    .local v21, "isAvailable":Z
    const/16 v22, 0x1

    .line 374
    :goto_7
    if-eqz v22, :cond_d

    .line 375
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 376
    if-eqz v21, :cond_9

    .line 377
    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setSelected(Z)V

    .line 378
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/genie_connect/android/utils/string/StringUtils;->BULLET_CHARACTER:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 370
    .end local v21    # "isAvailable":Z
    :cond_c
    const/16 v21, 0x0

    .line 371
    .restart local v21    # "isAvailable":Z
    const/16 v22, 0x0

    goto :goto_7

    .line 381
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDisabled(Landroid/widget/TextView;)V

    goto/16 :goto_4

    .line 386
    .end local v9    # "col":I
    .end local v10    # "currentItem":I
    .end local v12    # "datesToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .end local v13    # "day":Ljava/util/Date;
    .end local v14    # "day1":Ljava/lang/String;
    .end local v15    # "dayLast":Ljava/lang/String;
    .end local v16    # "dayName":Ljava/lang/String;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "isAvailable":Z
    .end local v22    # "isEventDay":Z
    .end local v24    # "lastMonthName":Ljava/lang/String;
    .end local v27    # "row":I
    .end local v28    # "thisMonthName":Ljava/lang/String;
    .end local v31    # "view":Landroid/widget/TextView;
    :cond_e
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "^ CALGRIDHELP: EventDayTime Size: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setGridVisibility(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    if-eqz p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->mGrid:Landroid/support/v7/widget/GridLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->setVisibility(I)V

    goto :goto_0
.end method
