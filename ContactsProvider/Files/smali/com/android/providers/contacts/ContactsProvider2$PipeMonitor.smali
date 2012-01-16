.class Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;
.super Landroid/os/AsyncTask;
.source "ContactsProvider2.java"


# instance fields
.field private final bq:Landroid/os/ParcelFileDescriptor;

.field private final br:J

.field private final bs:J

.field final synthetic bt:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7679
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7680
    iput-wide p2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->br:J

    .line 7681
    iput-wide p4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bs:J

    .line 7682
    iput-object p6, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bq:Landroid/os/ParcelFileDescriptor;

    .line 7683
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;Lcom/android/providers/contacts/ContactsProvider2$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7675
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 7687
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bq:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 7689
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7690
    if-eqz v0, :cond_1

    .line 7691
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/concurrent/CountDownLatch;)V

    .line 7692
    new-instance v1, Lcom/android/providers/contacts/PhotoProcessor;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Lcom/android/providers/contacts/ContactsProvider2;)I

    move-result v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsProvider2;->c(Lcom/android/providers/contacts/ContactsProvider2;)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;II)V

    .line 7696
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->br:J

    invoke-static {v2, v3}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->d(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v0

    .line 7699
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/PhotoStore;->a(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v2

    .line 7703
    iget-wide v4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bs:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_3

    .line 7705
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7708
    const-string v4, "skip_processing"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7710
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    .line 7711
    const-string v4, "data14"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7713
    :cond_0
    const-string v2, "data15"

    invoke-virtual {v1}, Lcom/android/providers/contacts/PhotoProcessor;->fA()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 7714
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bs:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7739
    :cond_1
    :goto_1
    return-object v6

    .line 7696
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->e(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v0

    goto :goto_0

    .line 7718
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7721
    const-string v4, "skip_processing"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7723
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7724
    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7725
    cmp-long v4, v2, v7

    if-eqz v4, :cond_4

    .line 7726
    const-string v4, "data14"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7728
    :cond_4
    const-string v2, "data15"

    invoke-virtual {v1}, Lcom/android/providers/contacts/PhotoProcessor;->fA()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 7729
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->br:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7736
    :catch_0
    move-exception v0

    .line 7737
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
