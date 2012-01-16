.class Lcom/android/vcard/VCardBuilder$PostalStruct;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# instance fields
.field final pu:Z

.field final pv:Z

.field final pw:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1086
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-boolean p1, p0, Lcom/android/vcard/VCardBuilder$PostalStruct;->pu:Z

    .line 1088
    iput-boolean p2, p0, Lcom/android/vcard/VCardBuilder$PostalStruct;->pv:Z

    .line 1089
    iput-object p3, p0, Lcom/android/vcard/VCardBuilder$PostalStruct;->pw:Ljava/lang/String;

    .line 1090
    return-void
.end method
