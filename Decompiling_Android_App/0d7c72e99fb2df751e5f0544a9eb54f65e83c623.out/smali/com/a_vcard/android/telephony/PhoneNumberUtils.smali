.class public Lcom/a_vcard/android/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# static fields
.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 884
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "NP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatJapaneseNumber(Lcom/a_vcard/android/text/Editable;)V
    .locals 0
    .param p0, "text"    # Lcom/a_vcard/android/text/Editable;

    .prologue
    .line 1114
    invoke-static {p0}, Lcom/a_vcard/android/telephony/JapanesePhoneNumberFormatter;->format(Lcom/a_vcard/android/text/Editable;)V

    .line 1115
    return-void
.end method

.method public static formatNanpNumber(Lcom/a_vcard/android/text/Editable;)V
    .locals 15
    .param p0, "text"    # Lcom/a_vcard/android/text/Editable;

    .prologue
    .line 998
    invoke-interface {p0}, Lcom/a_vcard/android/text/Editable;->length()I

    move-result v4

    .line 999
    .local v4, "length":I
    const-string v12, "+1-nnn-nnn-nnnn"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v4, v12, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    const/4 v12, 0x0

    invoke-interface {p0, v12, v4}, Lcom/a_vcard/android/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1006
    .local v10, "saved":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 1007
    .local v8, "p":I
    :goto_1
    invoke-interface {p0}, Lcom/a_vcard/android/text/Editable;->length()I

    move-result v12

    if-ge v8, v12, :cond_3

    .line 1008
    invoke-interface {p0, v8}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 1009
    add-int/lit8 v12, v8, 0x1

    invoke-interface {p0, v8, v12}, Lcom/a_vcard/android/text/Editable;->delete(II)Lcom/a_vcard/android/text/Editable;

    goto :goto_1

    .line 1011
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1014
    :cond_3
    invoke-interface {p0}, Lcom/a_vcard/android/text/Editable;->length()I

    move-result v4

    .line 1019
    const/4 v12, 0x3

    new-array v1, v12, [I

    .line 1020
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1022
    .local v5, "numDashes":I
    const/4 v11, 0x1

    .line 1023
    .local v11, "state":I
    const/4 v7, 0x0

    .line 1024
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_2
    if-ge v2, v4, :cond_a

    .line 1025
    invoke-interface {p0, v2}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v0

    .line 1026
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1070
    :cond_4
    :pswitch_0
    const/4 v12, 0x0

    invoke-interface {p0, v12, v4, v10}, Lcom/a_vcard/android/text/Editable;->replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;

    goto :goto_0

    .line 1028
    :pswitch_1
    if-eqz v7, :cond_5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    .line 1029
    :cond_5
    const/4 v11, 0x3

    move v5, v6

    .line 1024
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_2

    .line 1042
    :cond_6
    :pswitch_2
    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 1044
    const/4 v12, 0x0

    invoke-interface {p0, v12, v4, v10}, Lcom/a_vcard/android/text/Editable;->replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;

    goto :goto_0

    .line 1046
    :cond_7
    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    .line 1048
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1053
    :goto_4
    const/4 v11, 0x1

    .line 1054
    add-int/lit8 v7, v7, 0x1

    .line 1055
    goto :goto_3

    .line 1049
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    const/4 v12, 0x4

    if-eq v11, v12, :cond_d

    const/4 v12, 0x3

    if-eq v7, v12, :cond_9

    const/4 v12, 0x6

    if-ne v7, v12, :cond_d

    .line 1051
    :cond_9
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_4

    .line 1058
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v11, 0x4

    move v5, v6

    .line 1059
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 1062
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_4

    .line 1064
    const/4 v11, 0x2

    move v5, v6

    .line 1065
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 1075
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a
    const/4 v12, 0x7

    if-ne v7, v12, :cond_c

    .line 1077
    add-int/lit8 v5, v6, -0x1

    .line 1081
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v5, :cond_b

    .line 1082
    aget v9, v1, v2

    .line 1083
    .local v9, "pos":I
    add-int v12, v9, v2

    add-int v13, v9, v2

    const-string v14, "-"

    invoke-interface {p0, v12, v13, v14}, Lcom/a_vcard/android/text/Editable;->replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;

    .line 1081
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1087
    .end local v9    # "pos":I
    :cond_b
    invoke-interface {p0}, Lcom/a_vcard/android/text/Editable;->length()I

    move-result v3

    .line 1088
    .local v3, "len":I
    :goto_7
    if-lez v3, :cond_0

    .line 1089
    add-int/lit8 v12, v3, -0x1

    invoke-interface {p0, v12}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_0

    .line 1090
    add-int/lit8 v12, v3, -0x1

    invoke-interface {p0, v12, v3}, Lcom/a_vcard/android/text/Editable;->delete(II)Lcom/a_vcard/android/text/Editable;

    .line 1091
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_c
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_5

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_d
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .line 1026
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 920
    new-instance v0, Lcom/a_vcard/android/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 921
    .local v0, "text":Lcom/a_vcard/android/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->formatNumber(Lcom/a_vcard/android/text/Editable;I)V

    .line 922
    invoke-virtual {v0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Lcom/a_vcard/android/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Lcom/a_vcard/android/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 956
    move v0, p1

    .line 958
    .local v0, "formatType":I
    invoke-interface {p0}, Lcom/a_vcard/android/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 959
    invoke-interface {p0, v3}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 960
    const/4 v0, 0x1

    .line 969
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 977
    :cond_1
    :goto_1
    return-void

    .line 961
    :cond_2
    invoke-interface {p0}, Lcom/a_vcard/android/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-interface {p0, v3}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    invoke-interface {p0, v4}, Lcom/a_vcard/android/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 963
    const/4 v0, 0x2

    goto :goto_0

    .line 971
    :pswitch_0
    invoke-static {p0}, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->formatNanpNumber(Lcom/a_vcard/android/text/Editable;)V

    goto :goto_1

    .line 974
    :pswitch_1
    invoke-static {p0}, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->formatJapaneseNumber(Lcom/a_vcard/android/text/Editable;)V

    goto :goto_1

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 933
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "country":Ljava/lang/String;
    sget-object v3, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v2, v3

    .line 937
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 938
    sget-object v3, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    const/4 v3, 0x1

    .line 945
    :goto_1
    return v3

    .line 937
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    :cond_1
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 943
    const/4 v3, 0x2

    goto :goto_1

    .line 945
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
