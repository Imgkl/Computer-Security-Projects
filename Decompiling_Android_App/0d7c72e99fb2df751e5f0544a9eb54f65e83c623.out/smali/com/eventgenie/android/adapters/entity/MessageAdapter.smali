.class Lcom/eventgenie/android/adapters/entity/MessageAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "MessageAdapter.java"


# instance fields
.field final c:Luk/co/alt236/easycursor/EasyCursor;

.field private timeManagementFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 63
    iput-object p3, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->c:Luk/co/alt236/easycursor/EasyCursor;

    .line 65
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->timeManagementFormat:I

    .line 67
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->c:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v0, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->icon:I

    if-ne v2, v3, :cond_3

    .line 103
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->c:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "isRead"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "read":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 111
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_gm_list_schedule:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    .end local v1    # "read":I
    :goto_1
    return-void

    .line 107
    .restart local v1    # "read":I
    :cond_0
    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->c:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "noChildren"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "children":I
    if-lez v0, :cond_2

    .line 115
    sget v2, Lcom/eventgenie/android/R$drawable;->list_messages_replied:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 117
    :cond_2
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_gm_list_messages:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 121
    .end local v0    # "children":I
    .end local v1    # "read":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->c:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "isRead"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "read":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    sget v2, Lcom/eventgenie/android/R$id;->message_timestamp:I

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->SQLITE:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    iget v3, p0, Lcom/eventgenie/android/adapters/entity/MessageAdapter;->timeManagementFormat:I

    invoke-static {v1, v2, p2, v3}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->formatDateTimeWithMediumFormat(Landroid/content/Context;Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    sget v2, Lcom/eventgenie/android/R$id;->message_subject:I

    if-ne v1, v2, :cond_2

    .line 88
    if-ne v0, v3, :cond_1

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
