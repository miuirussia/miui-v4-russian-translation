.class Lcom/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# instance fields
.field protected final po:Ljava/lang/String;

.field private final pp:Ljava/util/List;

.field protected final pq:Ljava/util/Set;

.field protected final pr:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/android/vcard/VCardConfig;->bv:I

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->pp:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->pq:Ljava/util/Set;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->pr:Ljava/util/Set;

    .line 161
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->po:Ljava/lang/String;

    .line 162
    return-void
.end method
