.class public interface abstract Landroid/os/ILightService;
.super Ljava/lang/Object;
.source "ILightService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ILightService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setBrightnessButtonLightOneShot(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract turnOnButtonLightOneShot()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
