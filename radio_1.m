function varargout = radio_1(varargin)
% RADIO_1 MATLAB code for radio_1.fig
%      RADIO_1, by itself, creates a new RADIO_1 or raises the existing
%      singleton*.
%
%      H = RADIO_1 returns the handle to a new RADIO_1 or the handle to
%      the existing singleton*.
%
%      RADIO_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RADIO_1.M with the given input arguments.
%
%      RADIO_1('Property','Value',...) creates a new RADIO_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before radio_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to radio_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help radio_1

% Last Modified by GUIDE v2.5 30-Jun-2015 16:35:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @radio_1_OpeningFcn, ...
                   'gui_OutputFcn',  @radio_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before radio_1 is made visible.
function radio_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to radio_1 (see VARARGIN)
handles.output = hObject;
% Choose default command line output for radio_1

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes radio_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.edit1,'string',' ');
set(handles.edit2,'string',' ');
set(handles.edit3,'string',' ');

global v1 v2 v3 v4 a b
v1=0;
v2=0;
v3=0;
v4=0;


% --- Outputs from this function are returned to the command line.
function varargout = radio_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

global a
a=get(handles.edit1,'string');
a=str2num(a);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
global b
b=get(handles.edit2,'string');
b=str2num(b);



% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sum.
function sum_Callback(hObject, eventdata, handles)
% hObject    handle to sum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sum
global v1 v2 v3 v4 
v1=get(handles.sum,'value');
if(v1==1)
    v2=0;
    v3=0;
    v4=0;
    set(handles.v2,'value',0);
    
    set(handles.v3,'value',0);
    set(handles.v4,'value',0);
       
end



% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sub
global v1 v2 v3 v4 
v2=get(handles.sub,'value');
if(v2==1)
    v1=0;
    v3=0;
    v4=0;
    set(handles.v1,'value',0);
    
    set(handles.v3,'value',0);
    set(handles.v4,'value',0);
       
end


% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mul

global v1 v2 v3 v4 
v3=get(handles.mul,'value');
if(v3==1)
    v2=0;
    v1=0;
    v4=0;
    set(handles.v2,'value',0);
    
    set(handles.v1,'value',0);
    set(handles.v4,'value',0);
       
end

% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of div
global v1 v2 v3 v4 
v4=get(handles.div,'value');
if(v4==1)
    v2=0;
    v3=0;
    v1=0;
    set(handles.v2,'value',0);
    
    set(handles.v3,'value',0);
    set(handles.v1,'value',0);
       
end


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v1 v2 v3 v4 a b
if(v1==1)
    c=a+b;
elseif (v2==1)
    c=a-b;
    
elseif (v3==1)
    c=a*b;
    
elseif (v4==1)
    c=a/b;
    
end
set(handles.edit3,'string',c)

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
