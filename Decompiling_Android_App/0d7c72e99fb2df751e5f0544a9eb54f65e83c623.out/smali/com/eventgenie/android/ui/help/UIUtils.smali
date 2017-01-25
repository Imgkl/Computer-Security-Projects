.class public Lcom/eventgenie/android/ui/help/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/help/UIUtils$1;,
        Lcom/eventgenie/android/ui/help/UIUtils$Layout;
    }
.end annotation


# static fields
.field private static sFormatter:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/eventgenie/android/ui/help/UIUtils;->sFormatter:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method public static calculateOverridingColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 7
    .param p0, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 79
    const/high16 v4, 0xff0000

    and-int/2addr v4, p0

    const v5, 0xffff

    div-int v3, v4, v5

    .line 80
    .local v3, "red":I
    const v4, 0xff00

    and-int/2addr v4, p0

    div-int/lit16 v1, v4, 0xff

    .line 81
    .local v1, "green":I
    and-int/lit16 v0, p0, 0xff

    .line 83
    .local v0, "blue":I
    const/16 v4, 0x14

    new-array v2, v4, [F

    const/4 v4, 0x0

    aput v6, v2, v4

    const/4 v4, 0x1

    aput v6, v2, v4

    const/4 v4, 0x2

    aput v6, v2, v4

    const/4 v4, 0x3

    aput v6, v2, v4

    const/4 v4, 0x4

    int-to-float v5, v3

    aput v5, v2, v4

    const/4 v4, 0x5

    aput v6, v2, v4

    const/4 v4, 0x6

    aput v6, v2, v4

    const/4 v4, 0x7

    aput v6, v2, v4

    const/16 v4, 0x8

    aput v6, v2, v4

    const/16 v4, 0x9

    int-to-float v5, v1

    aput v5, v2, v4

    const/16 v4, 0xa

    aput v6, v2, v4

    const/16 v4, 0xb

    aput v6, v2, v4

    const/16 v4, 0xc

    aput v6, v2, v4

    const/16 v4, 0xd

    aput v6, v2, v4

    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v2, v4

    const/16 v4, 0xf

    aput v6, v2, v4

    const/16 v4, 0x10

    aput v6, v2, v4

    const/16 v4, 0x11

    aput v6, v2, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    const/16 v4, 0x13

    aput v6, v2, v4

    .line 89
    .local v2, "matrix":[F
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v4
.end method

.method public static calculateSmallestWidth(Landroid/app/Activity;)I
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 95
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 96
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 98
    .local v1, "height":I
    if-ge v2, v1, :cond_0

    .line 102
    .end local v2    # "width":I
    :goto_0
    return v2

    .restart local v2    # "width":I
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public static colouriseListSectionHeader(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 3
    .param p0, "header"    # Landroid/widget/TextView;
    .param p1, "a"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/eventgenie/android/ui/help/UIUtils;->getTitleColour(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    .local v0, "colour":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    return-void
.end method

.method public static convertEventToUtc(Ljava/lang/String;Ljava/util/TimeZone;)J
    .locals 8
    .param p0, "dateSqlStringFormat"    # Ljava/lang/String;
    .param p1, "eventTimeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 398
    invoke-static {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 399
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 401
    .local v2, "nowUtc":J
    return-wide v2
.end method

.method public static dipToPixels(FLandroid/content/Context;)F
    .locals 3
    .param p0, "dip"    # F
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 114
    .local v0, "value":F
    return v0
.end method

.method public static dipToPixels(ILandroid/content/Context;)I
    .locals 4
    .param p0, "dip"    # I
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v1, 0x1

    int-to-float v2, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 120
    .local v0, "value":I
    return v0
.end method

.method public static displayAdvert(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "show"    # Z

    .prologue
    .line 124
    sget v0, Lcom/eventgenie/android/R$id;->footer_ad:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I
    .locals 4
    .param p0, "layout"    # Lcom/eventgenie/android/ui/help/UIUtils$Layout;
    .param p1, "activity"    # Lcom/eventgenie/android/activities/base/GenieActivity;

    .prologue
    .line 147
    invoke-interface {p1}, Lcom/eventgenie/android/activities/base/GenieActivity;->isInsideTab()Z

    move-result v0

    .line 150
    .local v0, "isInsideTab":Z
    sget-object v2, Lcom/eventgenie/android/ui/help/UIUtils$1;->$SwitchMap$com$eventgenie$android$ui$help$UIUtils$Layout:[I

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 166
    const/4 v1, 0x0

    .line 170
    .local v1, "res":I
    :goto_0
    return v1

    .line 152
    .end local v1    # "res":I
    :pswitch_0
    if-eqz v0, :cond_0

    .line 153
    sget v1, Lcom/eventgenie/android/R$layout;->activity_entity_list_advertisment_top:I

    .restart local v1    # "res":I
    goto :goto_0

    .line 155
    .end local v1    # "res":I
    :cond_0
    sget v1, Lcom/eventgenie/android/R$layout;->activity_entity_list_advertisment_bottom:I

    .line 157
    .restart local v1    # "res":I
    goto :goto_0

    .line 159
    .end local v1    # "res":I
    :pswitch_1
    if-eqz v0, :cond_1

    .line 160
    sget v1, Lcom/eventgenie/android/R$layout;->generic_list_advertisment_top:I

    .restart local v1    # "res":I
    goto :goto_0

    .line 162
    .end local v1    # "res":I
    :cond_1
    sget v1, Lcom/eventgenie/android/R$layout;->generic_list_advertisment_bottom:I

    .line 164
    .restart local v1    # "res":I
    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAppropriateLayoutForFragment(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    instance-of v2, p0, Lcom/eventgenie/android/activities/base/GenieActivity;

    if-eqz v2, :cond_1

    .line 131
    check-cast p0, Lcom/eventgenie/android/activities/base/GenieActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0}, Lcom/eventgenie/android/activities/base/GenieActivity;->isInsideTab()Z

    move-result v0

    .line 134
    .local v0, "isInsideTab":Z
    if-eqz v0, :cond_0

    .line 135
    sget v1, Lcom/eventgenie/android/R$layout;->fragment_entity_list_advertisment_top:I

    .line 143
    .end local v0    # "isInsideTab":Z
    .local v1, "res":I
    :goto_0
    return v1

    .line 137
    .end local v1    # "res":I
    .restart local v0    # "isInsideTab":Z
    :cond_0
    sget v1, Lcom/eventgenie/android/R$layout;->fragment_entity_list_advertisment_bottom:I

    .restart local v1    # "res":I
    goto :goto_0

    .line 140
    .end local v0    # "isInsideTab":Z
    .end local v1    # "res":I
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "res":I
    goto :goto_0
.end method

.method public static getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;
    .locals 5
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->list_section_header_holo:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->colouriseListSectionHeader(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-object v1
.end method

.method private static getTitleColour(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "a"    # Landroid/content/Context;

    .prologue
    .line 182
    check-cast p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    .end local p0    # "a":Landroid/content/Context;
    invoke-interface {p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDetailsTitleColour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static isLongScreen(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optString(Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-interface {p0, p1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static parseDayMidnight(Ljava/lang/String;)J
    .locals 4
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    sget-object v2, Lcom/eventgenie/android/ui/help/UIUtils;->sFormatter:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 217
    .local v0, "d":Ljava/util/Date;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Date;->setHours(I)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Date;->setSeconds(I)V

    .line 221
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 224
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    return-wide v2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 224
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static parseTime(Ljava/lang/String;)J
    .locals 5
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 230
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    :goto_0
    return-wide v2

    .line 235
    :cond_0
    :try_start_0
    sget-object v4, Lcom/eventgenie/android/ui/help/UIUtils;->sFormatter:Ljava/text/DateFormat;

    invoke-virtual {v4, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 237
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 238
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAdBarBackground(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "colour"    # I

    .prologue
    .line 245
    sget v1, Lcom/eventgenie/android/R$id;->footer_ad:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    .local v0, "adBar":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public static setAgendaAndNoteIcon(Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/ImageView;Z)V
    .locals 6
    .param p0, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "showThreeDotsIfNeeded"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    const-string v5, "isFavourite"

    invoke-interface {p0, v5, v4}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 305
    .local v0, "fav":Z
    :goto_0
    const-string v5, "hasNote"

    invoke-interface {p0, v5, v4}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 306
    .local v2, "note":Z
    :goto_1
    const-string v5, "isBookmarked"

    invoke-interface {p0, v5, v4}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 311
    .local v1, "isBookmarked":Z
    :goto_2
    invoke-static {v0, v2, v1, p1, p2}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(ZZZLandroid/widget/ImageView;Z)V

    .line 313
    return-void

    .end local v0    # "fav":Z
    .end local v1    # "isBookmarked":Z
    .end local v2    # "note":Z
    :cond_0
    move v0, v4

    .line 304
    goto :goto_0

    .restart local v0    # "fav":Z
    :cond_1
    move v2, v4

    .line 305
    goto :goto_1

    .restart local v2    # "note":Z
    :cond_2
    move v1, v4

    .line 306
    goto :goto_2
.end method

.method public static setAgendaAndNoteIcon(ZZZLandroid/widget/ImageView;Z)V
    .locals 1
    .param p0, "fav"    # Z
    .param p1, "note"    # Z
    .param p2, "isBookmarked"    # Z
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "showThreeDotsInstead"    # Z

    .prologue
    .line 316
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 317
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    :goto_0
    if-eqz p4, :cond_3

    .line 324
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_three_dots:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    :cond_1
    :goto_1
    return-void

    .line 319
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 327
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_agenda_and_note:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 328
    :cond_4
    if-eqz p0, :cond_5

    .line 329
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_agenda:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 330
    :cond_5
    if-eqz p1, :cond_1

    .line 331
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_note:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setHeaderText(IILandroid/app/Activity;)V
    .locals 1
    .param p0, "headerId"    # I
    .param p1, "textId"    # I
    .param p2, "a"    # Landroid/app/Activity;

    .prologue
    .line 272
    invoke-virtual {p2, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 273
    return-void
.end method

.method public static setHeaderText(Landroid/view/View;ILandroid/content/Context;)V
    .locals 2
    .param p0, "header"    # Landroid/view/View;
    .param p1, "textId"    # I
    .param p2, "a"    # Landroid/content/Context;

    .prologue
    .line 277
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 278
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "header":Landroid/view/View;
    invoke-virtual {p2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    return-void

    .line 280
    .restart local p0    # "header":Landroid/view/View;
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-static {v0, p2}, Lcom/eventgenie/android/ui/help/UIUtils;->colouriseListSectionHeader(Landroid/widget/TextView;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setHeaderText(Landroid/view/View;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "header"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "a"    # Landroid/app/Activity;

    .prologue
    .line 288
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 290
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "header":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 292
    .restart local p0    # "header":Landroid/view/View;
    :cond_1
    sget v1, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-static {v0, p2}, Lcom/eventgenie/android/ui/help/UIUtils;->colouriseListSectionHeader(Landroid/widget/TextView;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V
    .locals 0
    .param p0, "header"    # Landroid/view/View;
    .param p1, "visibility"    # I
    .param p2, "a"    # Landroid/app/Activity;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    return-void
.end method

.method public static setImageViewAlpha(Landroid/widget/ImageView;I)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "alpha"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method public static setWaitlistLabel(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/TextView;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionsCursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 346
    sget-object v1, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v1, v1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 348
    .local v0, "isWaitlisted":Z
    invoke-static {p0, v0, p2}, Lcom/eventgenie/android/ui/help/UIUtils;->setWaitlistLabel(Landroid/content/Context;ZLandroid/widget/TextView;)V

    .line 349
    return-void
.end method

.method public static setWaitlistLabel(Landroid/content/Context;ZLandroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isWaitlisted"    # Z
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setWaitlistLabel(Landroid/content/Context;ZLandroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isWaitlisted"    # Z
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "originalText"    # Ljava/lang/CharSequence;
    .param p4, "waitlistLabel"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x21

    .line 379
    if-eqz p1, :cond_0

    .line 380
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    .local v0, "wordtoSpan":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 383
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#737373"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 384
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 386
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .end local v0    # "wordtoSpan":Landroid/text/Spannable;
    :cond_0
    return-void
.end method
