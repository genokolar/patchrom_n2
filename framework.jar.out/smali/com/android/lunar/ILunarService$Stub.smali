.class public abstract Lcom/android/lunar/ILunarService$Stub;
.super Landroid/os/Binder;
.source "ILunarService.java"

# interfaces
.implements Lcom/android/lunar/ILunarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lunar/ILunarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lunar/ILunarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.lunar.ILunarService"

.field static final TRANSACTION_getAnimalsYear:I = 0x7

.field static final TRANSACTION_getAnimalsYearSimple:I = 0x6

.field static final TRANSACTION_getChinaDayString:I = 0xb

.field static final TRANSACTION_getChinaDayStringSimple:I = 0xa

.field static final TRANSACTION_getChinaMonthString:I = 0x9

.field static final TRANSACTION_getChinaMonthStringSimple:I = 0x8

.field static final TRANSACTION_getChinaYearString:I = 0xd

.field static final TRANSACTION_getChinaYearStringSimple:I = 0xc

.field static final TRANSACTION_getFestival:I = 0x4

.field static final TRANSACTION_getFestivalSimple:I = 0x3

.field static final TRANSACTION_getLunarCalendarInfo:I = 0xe

.field static final TRANSACTION_getLunarDay:I = 0x10

.field static final TRANSACTION_getLunarSolarTerms:I = 0x5

.field static final TRANSACTION_getLunarStringForDayView:I = 0xf

.field static final TRANSACTION_getTraditionalFestival:I = 0x2

.field static final TRANSACTION_getTraditionalFestivalSimple:I = 0x1

.field static final TRANSACTION_isFestivalDay:I = 0x14

.field static final TRANSACTION_isFestivalDayByDay:I = 0x13

.field static final TRANSACTION_isSolarTerms:I = 0x12

.field static final TRANSACTION_isSolarTermsByDay:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.lunar.ILunarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/lunar/ILunarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/lunar/ILunarService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.lunar.ILunarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/lunar/ILunarService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/lunar/ILunarService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/lunar/ILunarService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/lunar/ILunarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->getTraditionalFestivalSimple()Ljava/lang/String;

    move-result-object v4

    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lunar/ILunarService$Stub;->getTraditionalFestival(III)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->getFestivalSimple()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/lunar/ILunarService$Stub;->getFestival(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/lunar/ILunarService$Stub;->getLunarSolarTerms(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->getAnimalsYearSimple()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/lunar/ILunarService$Stub;->getAnimalsYear(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->getChinaMonthStringSimple()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/lunar/ILunarService$Stub;->getChinaMonthString(IZ)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Ljava/lang/String;
    :cond_0
    move v1, v6

    goto :goto_1

    .end local v0           #_arg0:I
    :sswitch_a
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/lunar/ILunarService$Stub;->getChinaDayStringSimple(Z)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Ljava/lang/String;
    :cond_1
    move v0, v6

    goto :goto_2

    :sswitch_b
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .local v2, _arg2:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .local v3, _arg3:Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/lunar/ILunarService$Stub;->getChinaDayString(IIZZ)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    .end local v4           #_result:Ljava/lang/String;
    :cond_2
    move v2, v6

    goto :goto_3

    .restart local v2       #_arg2:Z
    :cond_3
    move v3, v6

    goto :goto_4

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Z
    :sswitch_c
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->getChinaYearStringSimple()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/lunar/ILunarService$Stub;->getChinaYearString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->getLunarCalendarInfo()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lunar/ILunarService$Stub;->getLunarStringForDayView(III)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v6, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lunar/ILunarService$Stub;->getLunarDay(III)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lunar/ILunarService$Stub;->isSolarTermsByDay(III)Z

    move-result v4

    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_12
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->isSolarTerms()Z

    move-result v4

    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4           #_result:Z
    :sswitch_13
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lunar/ILunarService$Stub;->isFestivalDayByDay(III)Z

    move-result v4

    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6

    move v6, v5

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_14
    const-string v7, "com.android.lunar.ILunarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/lunar/ILunarService$Stub;->isFestivalDay()Z

    move-result v4

    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
