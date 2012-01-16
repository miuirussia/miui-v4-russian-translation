.class Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SimStateChangedService.java"


# instance fields
.field final gC:I

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x7

    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    add-int/lit8 v1, v0, -0x2

    if-ltz v1, :cond_4

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    .line 246
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 247
    const/16 v2, 0x57

    if-ne v1, v2, :cond_0

    .line 248
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->gC:I

    .line 256
    :goto_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 261
    :goto_1
    return-void

    .line 249
    :cond_0
    const/16 v2, 0x4d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_2

    .line 250
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->gC:I

    goto :goto_0

    .line 251
    :cond_2
    const/16 v2, 0x48

    if-ne v1, v2, :cond_3

    .line 252
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->gC:I

    goto :goto_0

    .line 254
    :cond_3
    iput v3, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->gC:I

    goto :goto_0

    .line 258
    :cond_4
    iput v3, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->gC:I

    .line 259
    iput-object p1, p0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_1
.end method
