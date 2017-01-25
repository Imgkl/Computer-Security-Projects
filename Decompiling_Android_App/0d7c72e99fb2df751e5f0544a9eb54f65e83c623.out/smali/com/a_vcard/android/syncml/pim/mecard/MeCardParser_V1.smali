.class public Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;
.super Ljava/lang/Object;
.source "MeCardParser_V1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcKey(Lcom/eventgenie/android/utils/qrcode/MeCardContact;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contact"    # Lcom/eventgenie/android/utils/qrcode/MeCardContact;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 8
    const/4 v0, 0x1

    .line 9
    .local v0, "counter":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    .local v1, "tmpKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_0
    return-object v1
.end method

.method private concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "arr"    # [Ljava/lang/String;

    .prologue
    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 24
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_1
    return-object v1
.end method

.method private parseContact(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/qrcode/MeCardContact;
    .locals 11
    .param p1, "vcardStr"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v1, Lcom/eventgenie/android/utils/qrcode/MeCardContact;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;-><init>()V

    .line 50
    .local v1, "contact":Lcom/eventgenie/android/utils/qrcode/MeCardContact;
    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "fields":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_8

    aget-object v2, v0, v6

    .line 53
    .local v2, "field":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "fieldArr":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 56
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "fieldName":Ljava/lang/String;
    const-string v9, "N"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 60
    const-string v9, "N"

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    const-string v9, "ORG"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 63
    const-string v9, "ORG"

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    .restart local v4    # "fieldName":Ljava/lang/String;
    :cond_2
    const-string v9, "TEL"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 66
    const-string v9, "TEL"

    invoke-direct {p0, v1, v9}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->calcKey(Lcom/eventgenie/android/utils/qrcode/MeCardContact;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_3
    const-string v9, "ADR"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    const-string v9, "ADR"

    invoke-direct {p0, v1, v9}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->calcKey(Lcom/eventgenie/android/utils/qrcode/MeCardContact;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_4
    const-string v9, "EMAIL"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 76
    const-string v9, "EMAIL"

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_5
    const-string v9, "URL"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 81
    const-string v9, "URL"

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_6
    const-string v9, "NOTE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    const-string v8, ""

    .line 88
    .local v8, "note":Ljava/lang/String;
    const-string v9, "NOTE"

    invoke-virtual {v1, v9}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->hasProperty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 89
    const-string v9, "NOTE"

    invoke-virtual {v1, v9}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->concatAfterFirst([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 94
    const-string v9, "NOTE"

    invoke-virtual {v1, v9, v8}, Lcom/eventgenie/android/utils/qrcode/MeCardContact;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "fieldArr":[Ljava/lang/String;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v8    # "note":Ljava/lang/String;
    :cond_8
    return-object v1
.end method


# virtual methods
.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "1"

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/qrcode/MeCardContact;
    .locals 1
    .param p1, "vcardStr"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->parseContact(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/qrcode/MeCardContact;

    move-result-object v0

    return-object v0
.end method
