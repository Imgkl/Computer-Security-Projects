.class public Lcom/github/johnpersano/supertoasts/util/Style;
.super Ljava/lang/Object;
.source "Style.java"


# static fields
.field public static final BLACK:I = 0x0

.field public static final BLUE:I = 0x1

.field public static final GRAY:I = 0x2

.field public static final GREEN:I = 0x3

.field public static final ORANGE:I = 0x4

.field public static final PURPLE:I = 0x5

.field public static final RED:I = 0x6

.field public static final WHITE:I = 0x7


# instance fields
.field public animations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field public background:I

.field public buttonTextColor:I

.field public dividerColor:I

.field public textColor:I

.field public typefaceStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Style;->animations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 41
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/util/Style;->typefaceStyle:I

    .line 43
    iput v1, p0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 44
    iput v1, p0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 45
    const v0, -0x333334

    iput v0, p0, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    return-void
.end method

.method public static getBackground(I)I
    .locals 2
    .param p0, "style"    # I

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 217
    packed-switch p0, :pswitch_data_0

    .line 253
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_gray:I

    .line 295
    :goto_0
    return v0

    .line 221
    :pswitch_0
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_black:I

    goto :goto_0

    .line 225
    :pswitch_1
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_white:I

    goto :goto_0

    .line 229
    :pswitch_2
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_gray:I

    goto :goto_0

    .line 233
    :pswitch_3
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_purple:I

    goto :goto_0

    .line 237
    :pswitch_4
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_red:I

    goto :goto_0

    .line 241
    :pswitch_5
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_orange:I

    goto :goto_0

    .line 245
    :pswitch_6
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_blue:I

    goto :goto_0

    .line 249
    :pswitch_7
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_green:I

    goto :goto_0

    .line 259
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 295
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    goto :goto_0

    .line 263
    :pswitch_8
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_black:I

    goto :goto_0

    .line 267
    :pswitch_9
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_white:I

    goto :goto_0

    .line 271
    :pswitch_a
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    goto :goto_0

    .line 275
    :pswitch_b
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_purple:I

    goto :goto_0

    .line 279
    :pswitch_c
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_red:I

    goto :goto_0

    .line 283
    :pswitch_d
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_orange:I

    goto :goto_0

    .line 287
    :pswitch_e
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_blue:I

    goto :goto_0

    .line 291
    :pswitch_f
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_green:I

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static getStyle(I)Lcom/github/johnpersano/supertoasts/util/Style;
    .locals 5
    .param p0, "styleType"    # I

    .prologue
    const/4 v1, 0x2

    const v4, -0x777778

    const v3, -0xbbbbbc

    const/4 v2, -0x1

    .line 56
    new-instance v0, Lcom/github/johnpersano/supertoasts/util/Style;

    invoke-direct {v0}, Lcom/github/johnpersano/supertoasts/util/Style;-><init>()V

    .line 58
    .local v0, "style":Lcom/github/johnpersano/supertoasts/util/Style;
    packed-switch p0, :pswitch_data_0

    .line 120
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 121
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 122
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 123
    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 63
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 64
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 69
    :pswitch_1
    iput v3, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 70
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 71
    iput v3, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 72
    iput v4, v0, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 77
    :pswitch_2
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 78
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 79
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 80
    iput v4, v0, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 85
    :pswitch_3
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 86
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 87
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 92
    :pswitch_4
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 93
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 94
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 99
    :pswitch_5
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 100
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 101
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 106
    :pswitch_6
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 107
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 108
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 113
    :pswitch_7
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 114
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 115
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getStyle(ILcom/github/johnpersano/supertoasts/SuperToast$Animations;)Lcom/github/johnpersano/supertoasts/util/Style;
    .locals 5
    .param p0, "styleType"    # I
    .param p1, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    const/4 v1, 0x2

    const v4, -0x777778

    const v3, -0xbbbbbc

    const/4 v2, -0x1

    .line 139
    new-instance v0, Lcom/github/johnpersano/supertoasts/util/Style;

    invoke-direct {v0}, Lcom/github/johnpersano/supertoasts/util/Style;-><init>()V

    .line 140
    .local v0, "style":Lcom/github/johnpersano/supertoasts/util/Style;
    iput-object p1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->animations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 142
    packed-switch p0, :pswitch_data_0

    .line 204
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 205
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 206
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 207
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 147
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 148
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 153
    :pswitch_1
    iput v3, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 154
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 155
    iput v3, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 156
    iput v4, v0, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 161
    :pswitch_2
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 162
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 163
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    .line 164
    iput v4, v0, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 169
    :pswitch_3
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 170
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 171
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 176
    :pswitch_4
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 177
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 178
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 183
    :pswitch_5
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 184
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 185
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 190
    :pswitch_6
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 191
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 192
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 197
    :pswitch_7
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    .line 198
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    .line 199
    iput v2, v0, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
