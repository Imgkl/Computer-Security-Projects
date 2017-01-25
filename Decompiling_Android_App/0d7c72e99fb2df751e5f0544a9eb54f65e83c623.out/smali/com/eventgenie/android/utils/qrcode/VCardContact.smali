.class public Lcom/eventgenie/android/utils/qrcode/VCardContact;
.super Lcom/a_vcard/android/syncml/pim/VNode;
.source "VCardContact.java"

# interfaces
.implements Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;


# instance fields
.field properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/a_vcard/android/syncml/pim/PropertyNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a_vcard/android/syncml/pim/VNode;)V
    .locals 1
    .param p1, "vnode"    # Lcom/a_vcard/android/syncml/pim/VNode;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/a_vcard/android/syncml/pim/VNode;-><init>()V

    .line 46
    iget-object v0, p1, Lcom/a_vcard/android/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/eventgenie/android/utils/qrcode/VCardContact;->properties:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/eventgenie/android/utils/qrcode/VCardContact;->properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;

    .line 130
    .local v1, "prop":Lcom/a_vcard/android/syncml/pim/PropertyNode;
    iget-object v2, v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 135
    .end local v1    # "prop":Lcom/a_vcard/android/syncml/pim/PropertyNode;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v2, p0, Lcom/eventgenie/android/utils/qrcode/VCardContact;->properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;

    .line 140
    .local v1, "prop":Lcom/a_vcard/android/syncml/pim/PropertyNode;
    iget-object v2, v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 146
    .end local v1    # "prop":Lcom/a_vcard/android/syncml/pim/PropertyNode;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public getAddressHome()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    const-string v0, "ADR"

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressWork()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const-string v0, "ADR"

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "ORG"

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "EMAIL"

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "FN"

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "contactDetails":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "company"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getCompany()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "job_title"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getJobTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "email"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "email_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "phone"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getPhoneWork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "secondary_phone"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getPhoneHome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "secondary_phone_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "notes"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "postal"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getAddressWork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "postal_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "TITLE"

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "URL"

    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "NOTE"

    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneHome()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    const-string v0, "TEL"

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneWork()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string v0, "TEL"

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "PHOTO"

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "URL"

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/VCardContact;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
