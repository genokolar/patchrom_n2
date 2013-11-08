.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/storage/ExternalStorageFormatter$4;,
        Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_EMMC:Ljava/lang/String; = "format_emmc"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field public static final FORMAT_SD_CARD:Ljava/lang/String; = "format_SD_card"

.field private static final MSG_FORMAT_INTERNAL_MEMORY:I = 0x64

.field private static final MSG_MOUNT_EXTERNAL_BACK:I = 0x65

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private intStorageHandler:Landroid/os/Handler;

.field private mAlwaysReset:Z

.field private mExtSDFormatCompleted:Z

.field private mExtSDFormatStarted:Z

.field private mFactoryReset:Z

.field private mFormatAsNOFS:Z

.field private mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

.field private mIntMemoryFormatCompleted:Z

.field private mIntMemoryFormatStarted:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private needMountExternalBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->needMountExternalBack:Z

    sget-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->None:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtSDFormatCompleted:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtSDFormatStarted:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->intStorageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->needMountExternalBack:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->intStorageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtSDFormatCompleted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtSDFormatCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private isFormatPhoneMemory()Z
    .locals 4

    .prologue
    const-string v1, "/mnt/sdcard"

    .local v1, internal_SD_path:Ljava/lang/String;
    const-string v0, "/mnt/sdcard2"

    .local v0, external_SD_path:Ljava/lang/String;
    const-string v2, "/mnt/sdcard"

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateForSamSung()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setFormatType(ZZ)V
    .locals 6
    .parameter "formatEmmc"
    .parameter "formatSD"

    .prologue
    const/4 v5, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlySD:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateForSamSung()Ljava/lang/String;

    move-result-object v1

    .local v1, extStatus:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .local v3, intStatus:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, extMediaCorrupt:Z
    const/4 v2, 0x0

    .local v2, intMediaCorrupt:Z
    const-string v4, "nofs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "unmountable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    :cond_4
    const-string v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v2, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->needMountExternalBack:Z

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_b

    const-string v4, "removed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "bad_removal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    goto :goto_0

    :cond_a
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlySD:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->needMountExternalBack:Z

    goto :goto_0

    :cond_b
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->None:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    goto :goto_0
.end method


# virtual methods
.method fail(I)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, extStoragePath:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    return-void

    .end local v1           #extStoragePath:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v1       #extStoragePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    :cond_0
    const-string v2, "always_reset"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    :cond_1
    const-string v2, "format_emmc"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, formatEmmc:Z
    const-string v2, "format_SD_card"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, formatSD:Z
    const-string v2, "ExternalStorageFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExternalStorageFormatter formatEmmc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formatSD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->setFormatType(ZZ)V

    const-string v2, "storage_volume"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    const-string v2, "ExternalStorageFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExternalStorageFormatter mStorageVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_4

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    :cond_4
    const/4 v2, 0x3

    return v2
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateProgressState()V
    .locals 15

    .prologue
    const v14, 0x1040516

    const v13, 0x1040515

    const v12, 0x1040495

    const v11, 0x1040494

    const/4 v10, 0x1

    const/4 v5, 0x0

    .local v5, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateForSamSung()Ljava/lang/String;

    move-result-object v1

    .local v1, extStatus:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .local v3, intStatus:Ljava/lang/String;
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExternalStorageFormatter extStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " intStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_12

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    if-eqz v7, :cond_12

    :cond_0
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->$SwitchMap$com$android$internal$os$storage$ExternalStorageFormatter$FormatType:[I

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    invoke-virtual {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_0
    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    if-ne v7, v8, :cond_15

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    if-eqz v7, :cond_14

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    if-nez v7, :cond_14

    invoke-virtual {p0, v14}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .local v4, mountService:Landroid/os/storage/IMountService;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_17

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, extStoragePath:Ljava/lang/String;
    :goto_2
    const/4 v6, 0x0

    .local v6, unmountPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    if-eqz v7, :cond_3

    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    if-eqz v7, :cond_18

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_3
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_1c

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAsNOFS:Z

    if-eqz v7, :cond_1c

    :cond_4
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mountService.unmountVolume :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v4, v6, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #extStoragePath:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v6           #unmountPath:Ljava/lang/String;
    :goto_4
    return-void

    :pswitch_0
    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    if-nez v7, :cond_8

    const-string v7, "mounted"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move-object v5, v1

    :goto_5
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    goto/16 :goto_0

    :cond_7
    move-object v5, v3

    goto :goto_5

    :cond_8
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move-object v5, v1

    goto/16 :goto_0

    :cond_a
    move-object v5, v3

    goto/16 :goto_0

    :cond_b
    move-object v5, v3

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    if-nez v7, :cond_f

    const-string v7, "mounted"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_c
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    move-object v5, v1

    :goto_6
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    :goto_7
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtSDFormatCompleted:Z

    goto/16 :goto_0

    :cond_e
    move-object v5, v3

    goto :goto_6

    :cond_f
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    move-object v5, v1

    goto :goto_7

    :cond_11
    move-object v5, v3

    goto :goto_7

    :pswitch_2
    move-object v5, v3

    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    :goto_8
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExternalStorageFormatter status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mFormatType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v11}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto/16 :goto_1

    :cond_15
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    if-ne v7, v8, :cond_16

    invoke-virtual {p0, v14}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p0, v11}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto/16 :goto_1

    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    :cond_17
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .restart local v2       #extStoragePath:Ljava/lang/String;
    .restart local v6       #unmountPath:Ljava/lang/String;
    :cond_18
    const-string v7, "mounted"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_19
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryForSamsung()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_1c
    :try_start_1
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExternalStorageFormatter mountService.unmountVolume1 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v4, v2, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #extStoragePath:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v6           #unmountPath:Ljava/lang/String;
    :cond_1d
    const-string v7, "nofs"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "unmounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "unmountable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    :cond_1e
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    if-ne v7, v8, :cond_21

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatStarted:Z

    if-eqz v7, :cond_20

    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIntMemoryFormatCompleted:Z

    if-nez v7, :cond_20

    invoke-virtual {p0, v13}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    :cond_1f
    :goto_9
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_23

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #extStoragePath:Ljava/lang/String;
    :goto_a
    if-eqz v4, :cond_24

    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v7, p0, v3, v4, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto/16 :goto_4

    .end local v2           #extStoragePath:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    :cond_20
    invoke-virtual {p0, v12}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_9

    :cond_21
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    if-ne v7, v8, :cond_22

    invoke-virtual {p0, v13}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_9

    :cond_22
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatType:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlySD:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    if-ne v7, v8, :cond_1f

    invoke-virtual {p0, v12}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_9

    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    :cond_23
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .restart local v2       #extStoragePath:Ljava/lang/String;
    :cond_24
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Unable to locate IMountService"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v2           #extStoragePath:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    :cond_25
    const-string v7, "bad_removal"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    const v7, 0x1040497

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_4

    :cond_26
    const-string v7, "checking"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const v7, 0x1040498

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_4

    :cond_27
    const-string v7, "removed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    const v7, 0x1040499

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_4

    :cond_28
    const-string v7, "shared"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const v7, 0x104049a

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_4

    :cond_29
    const v7, 0x104049b

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown storage state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
