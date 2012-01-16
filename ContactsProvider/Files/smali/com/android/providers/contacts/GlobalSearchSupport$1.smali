.class Lcom/android/providers/contacts/GlobalSearchSupport$1;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cR:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic cS:Lcom/android/providers/contacts/GlobalSearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/GlobalSearchSupport;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->cS:Lcom/android/providers/contacts/GlobalSearchSupport;

    iput-object p2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->cR:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->cS:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Lcom/android/providers/contacts/GlobalSearchSupport;)Lcom/android/providers/contacts/ContactsProvider2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 402
    new-instance v1, Lcom/android/providers/contacts/ContactInfoHelper;

    invoke-static {v0}, Lcom/android/providers/contacts/util/UriUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/providers/contacts/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->cR:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT DISTINCT number,countryiso FROM calls"

    invoke-virtual {v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_2

    .line 408
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 411
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/ContactInfoHelper;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    move-result-object v4

    .line 413
    iget-object v5, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->cR:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/providers/contacts/ContactInfoHelper;->a(Ljava/lang/String;Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 414
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 419
    :cond_2
    return-void
.end method
