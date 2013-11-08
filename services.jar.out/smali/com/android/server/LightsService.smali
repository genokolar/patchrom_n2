.class public Lcom/android/server/LightsService;
.super Landroid/os/ILightService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEF_BBL_BRIGHTNESS:I = 0x2

.field public static final DEF_BBL_TIMEOUT:I = 0x157c

.field static final LIGHT_FLASH_HARDWARE:I = 0x2

.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BLUETOOTH:I = 0x6

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_COUNT:I = 0x8

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field static final LIGHT_ID_WIFI:I = 0x7

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mButtonBrightness:I

.field private mButtonLightEnable:Z

.field private mButtonLightTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private mLightHandler:Landroid/os/Handler;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-direct {p0}, Landroid/os/ILightService$Stub;-><init>()V

    new-array v1, v3, [Lcom/android/server/LightsService$Light;

    iput-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    const/16 v1, 0x157c

    iput v1, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    iput-object v4, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    new-instance v1, Lcom/android/server/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mNativePointer:I

    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    const-string v1, "hardware"

    iget-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$Light;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$200(IIIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    invoke-super {p0}, Landroid/os/ILightService$Stub;->finalize()V

    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBrightnessButtonLight(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method

.method public setBrightnessButtonLightOneShot(I)V
    .locals 6
    .parameter "brightness"

    .prologue
    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v2, :cond_2

    if-lez p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    const-string v0, "Linx PS474S"

    .local v0, nameModel_N2:Ljava/lang/String;
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, productModel:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #nameModel_N2:Ljava/lang/String;
    .end local v1           #productModel:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #nameModel_N2:Ljava/lang/String;
    .restart local v1       #productModel:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0           #nameModel_N2:Ljava/lang/String;
    .end local v1           #productModel:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/LightsService;->turnOffButtonLight()V

    goto :goto_0
.end method

.method public turnOffButtonLight()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    return-void
.end method

.method public turnOnButtonLight()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    return-void
.end method

.method public turnOnButtonLightOneShot()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLightOneShot(I)V

    return-void
.end method

.method setLight(ILcom/android/server/LightsService$Light;)V
    .locals 1
    .parameter "id"
    .parameter "light"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aput-object p2, v0, p1

    return-void
.end method
