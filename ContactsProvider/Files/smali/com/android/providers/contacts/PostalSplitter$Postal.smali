.class public Lcom/android/providers/contacts/PostalSplitter$Postal;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# instance fields
.field public lc:Ljava/lang/String;

.field public ld:Ljava/lang/String;

.field public le:Ljava/lang/String;

.field public lf:Ljava/lang/String;

.field public lg:Ljava/lang/String;

.field public lh:Ljava/lang/String;

.field public li:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/ContentValues;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    .line 43
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    .line 44
    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    .line 45
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    .line 46
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    .line 47
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    .line 48
    const-string v0, "data10"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c(Landroid/content/ContentValues;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "data5"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "data6"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "data7"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "data8"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "data9"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "data10"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
