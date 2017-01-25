.class public Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "MakeUnavailableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;,
        Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;
    }
.end annotation


# static fields
.field private static final TIME_FROM_DIALOG_ID:I = 0x1

.field private static final TIME_UNTIL_DIALOG_ID:I = 0x2


# instance fields
.field private mDateSelectSpinner:Landroid/widget/Spinner;

.field private mDescription:Landroid/widget/EditText;

.field private mIsDeletable:Z

.field private mMinDate:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

.field private mOriginalItemId:J

.field private mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

.field private mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerRawDate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private mSubject:Landroid/widget/EditText;

.field private mTimeFromSelect:Landroid/widget/Button;

.field private final mTimeSetListenerFrom:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private final mTimeSetListenerUntil:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTimeUntilSelect:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mIsDeletable:Z

    .line 94
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$1;-><init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeSetListenerFrom:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 104
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;-><init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeSetListenerUntil:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 459
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->updateDisplay(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setActionbarEnabled(Z)V

    return-void
.end method

.method private isFromAfterTheUntil()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 118
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 121
    goto :goto_0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method private isUntilBeforeTheFrom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setActionbarEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableCustomButton(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Z)V

    .line 349
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->TWO:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableCustomButton(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Z)V

    .line 350
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableCustomButton(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Z)V

    .line 351
    return-void
.end method

.method private setupForReschedule()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 354
    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getAgendaItems()Lcom/genie_connect/android/db/access/DbAgendaItems;

    move-result-object v3

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbAgendaItems;->getAgendaItem(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 357
    .local v0, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 358
    const-string v3, "isDeletable"

    invoke-interface {v0, v3, v8}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mIsDeletable:Z

    .line 360
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mIsDeletable:Z

    if-nez v3, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 365
    :cond_0
    const-string v3, "eventDay"

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "eventDay":Ljava/lang/String;
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 367
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 368
    const-string v3, "^ UNAVAILABLE: Could not find event day!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->close(Landroid/database/Cursor;)V

    .line 370
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->finish()V

    .line 376
    :goto_0
    const-string v3, "runningTime_from"

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromSqlite(Ljava/lang/String;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .line 377
    const-string v3, "runningTime_to"

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromSqlite(Ljava/lang/String;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .line 378
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3, v8}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->setReady(Z)V

    .line 379
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3, v8}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->setReady(Z)V

    .line 382
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDescription:Landroid/widget/EditText;

    const-string v4, "fullDescription"

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSubject:Landroid/widget/EditText;

    const-string v4, "name"

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    .end local v1    # "eventDay":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->close(Landroid/database/Cursor;)V

    .line 387
    .end local v0    # "c":Luk/co/alt236/easycursor/EasyCursor;
    :cond_2
    return-void

    .line 372
    .restart local v0    # "c":Luk/co/alt236/easycursor/EasyCursor;
    .restart local v1    # "eventDay":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDateSelectSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private updateDisplay(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 391
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 393
    packed-switch p1, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getDay()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v5}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 396
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeFromSelect:Landroid/widget/Button;

    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getDay()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v5}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 400
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeUntilSelect:Landroid/widget/Button;

    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static validate(Landroid/widget/EditText;)Z
    .locals 2
    .param p0, "field"    # Landroid/widget/EditText;

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget v7, Lcom/eventgenie/android/R$layout;->activity_make_self_unavailable:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->title_new_adhoc_meeting:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 153
    const-string v7, "entity_id"

    invoke-virtual {v0, v7, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    .line 154
    const-string v7, "day_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "preferredDay":Ljava/lang/String;
    :goto_0
    sget v7, Lcom/eventgenie/android/R$id;->edit_subject:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSubject:Landroid/widget/EditText;

    .line 161
    sget v7, Lcom/eventgenie/android/R$id;->edit_body:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDescription:Landroid/widget/EditText;

    .line 162
    sget v7, Lcom/eventgenie/android/R$id;->btn_date:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDateSelectSpinner:Landroid/widget/Spinner;

    .line 163
    sget v7, Lcom/eventgenie/android/R$id;->btn_time_from:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeFromSelect:Landroid/widget/Button;

    .line 164
    sget v7, Lcom/eventgenie/android/R$id;->btn_time_to:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeUntilSelect:Landroid/widget/Button;

    .line 166
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 168
    iget-wide v8, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_reschedule:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->action_save:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_action_light_discard:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->discard:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 179
    :goto_1
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDateSelectSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    sget v7, Lcom/eventgenie/android/R$id;->header_meeting_date_and_time:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->header_meeting_date_and_time:I

    invoke-static {v7, v8, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 186
    sget v7, Lcom/eventgenie/android/R$id;->header_meeting_notes:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->header_meeting_notes:I

    invoke-static {v7, v8, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 192
    .local v5, "mEventDaysCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v3

    .line 194
    .local v3, "hasData":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerLabels:Ljava/util/List;

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerKeys:Ljava/util/List;

    .line 196
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerRawDate:Ljava/util/List;

    .line 198
    :goto_2
    if-eqz v3, :cond_3

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 200
    .local v2, "cSpinner":Ljava/util/Calendar;
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 201
    const-string v7, "runningTime_from"

    invoke-interface {v5, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/ui/help/UIUtils;->parseTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerKeys:Ljava/util/List;

    const-string v8, "name"

    invoke-interface {v5, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerLabels:Ljava/util/List;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocaleObject()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/genie_connect/common/utils/date/TimeFormatter;->formatDay(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerRawDate:Ljava/util/List;

    invoke-static {v2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromCalendar(Ljava/util/Calendar;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->isFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 209
    .local v1, "c":Ljava/util/Calendar;
    const-string v7, "runningTime_from"

    invoke-interface {v5, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/ui/help/UIUtils;->parseTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromCalendar(Ljava/util/Calendar;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mMinDate:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .line 213
    .end local v1    # "c":Ljava/util/Calendar;
    :cond_0
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v3

    .line 214
    goto :goto_2

    .line 156
    .end local v2    # "cSpinner":Ljava/util/Calendar;
    .end local v3    # "hasData":Z
    .end local v5    # "mEventDaysCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v6    # "preferredDay":Ljava/lang/String;
    :cond_1
    iput-wide v12, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    .line 157
    const/4 v6, 0x0

    .restart local v6    # "preferredDay":Ljava/lang/String;
    goto/16 :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->action_save:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    goto/16 :goto_1

    .line 215
    .restart local v3    # "hasData":Z
    .restart local v5    # "mEventDaysCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->close(Landroid/database/Cursor;)V

    .line 217
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    iget-object v9, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerLabels:Ljava/util/List;

    invoke-direct {v7, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 218
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 219
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDateSelectSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 224
    if-eqz v6, :cond_4

    .line 225
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 226
    .local v4, "index":I
    const/4 v7, -0x1

    if-le v4, v7, :cond_4

    .line 227
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDateSelectSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 234
    .end local v4    # "index":I
    :cond_4
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setupForReschedule()V

    .line 236
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    if-nez v7, :cond_6

    .line 237
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mMinDate:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-static {v7}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromSelectedDate(Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .line 238
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mMinDate:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-static {v7}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromSelectedDate(Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .line 243
    :cond_5
    :goto_3
    return-void

    .line 240
    :cond_6
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v7}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v10}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->updateDisplay(I)V

    .line 241
    :cond_7
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v7}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->isReady()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->updateDisplay(I)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 253
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 249
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeSetListenerFrom:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v3

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 251
    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mTimeSetListenerUntil:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v3

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSubject:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->validate(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDescription:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->validate(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->isUntilBeforeTheFrom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget v1, Lcom/eventgenie/android/R$string;->message_meeting_end_time_is_before_the_meeting_start_time:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 299
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->isFromAfterTheUntil()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    sget v1, Lcom/eventgenie/android/R$string;->message_meeting_start_time_is_after_the_meeting_end_time:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDateSelectSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v12

    .line 276
    .local v12, "spinnerIndex":I
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerRawDate:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .line 278
    .local v11, "selectedDate":Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 279
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 281
    invoke-virtual {v11}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getYear()I

    move-result v1

    invoke-virtual {v11}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMonth()I

    move-result v2

    invoke-virtual {v11}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getDay()I

    move-result v3

    iget-object v14, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v14}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v4

    iget-object v14, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v14}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 282
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 284
    .local v10, "fromTime":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getYear()I

    move-result v1

    invoke-virtual {v11}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMonth()I

    move-result v2

    invoke-virtual {v11}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getDay()I

    move-result v3

    iget-object v14, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v14}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v4

    iget-object v14, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v14}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 285
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "toTime":Ljava/lang/String;
    iget-wide v8, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    .line 288
    .local v8, "id":J
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSubject:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSpinnerKeys:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    .local v3, "eventDay":Ljava/lang/String;
    move-object v4, v10

    .line 292
    .local v4, "startTime":Ljava/lang/String;
    move-object v5, v13

    .line 294
    .local v5, "endTime":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$SendAdHocMeeting;-><init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 297
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "eventDay":Ljava/lang/String;
    .end local v4    # "startTime":Ljava/lang/String;
    .end local v5    # "endTime":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "fromTime":Ljava/lang/String;
    .end local v11    # "selectedDate":Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    .end local v12    # "spinnerIndex":I
    .end local v13    # "toTime":Ljava/lang/String;
    :cond_2
    sget v1, Lcom/eventgenie/android/R$string;->meeting_invalid:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto/16 :goto_0
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->onCustomButton1Click(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public onCustomButton3Click(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mOriginalItemId:J

    .line 310
    .local v2, "id":J
    const-string v1, "Meeting Deletion"

    const-string v4, "Are you sure you want to delete this meeting?"

    invoke-static {p0, v1, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040013

    new-instance v4, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;

    invoke-direct {v4, p0, v2, v3}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;-><init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;J)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x1040009

    new-instance v5, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$3;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$3;-><init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 324
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 336
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 330
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeFrom:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 333
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTimeClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_time_from:I

    if-ne v0, v1, :cond_0

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->showDialog(I)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->showDialog(I)V

    goto :goto_0
.end method
