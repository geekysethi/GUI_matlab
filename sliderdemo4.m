function varargout = sliderdemo4(varargin)
% SLIDERDEMO4 MATLAB code for sliderdemo4.fig
%      SLIDERDEMO4, by itself, creates a new SLIDERDEMO4 or raises the existing
%      singleton*.
%
%      H = SLIDERDEMO4 returns the handle to a new SLIDERDEMO4 or the handle to
%      the existing singleton*.
%
%      SLIDERDEMO4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERDEMO4.M with the given input arguments.
%
%      SLIDERDEMO4('Property','Value',...) creates a new SLIDERDEMO4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sliderdemo4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sliderdemo4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sliderdemo4

% Last Modified by GUIDE v2.5 02-Jul-2015 17:50:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sliderdemo4_OpeningFcn, ...
                   'gui_OutputFcn',  @sliderdemo4_OutputFcn, ...
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


% --- Executes just before sliderdemo4 is made visible.
function sliderdemo4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sliderdemo4 (see VARARGIN)

% Choose default command line output for sliderdemo4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sliderdemo4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.text1,'visible','off')
set(handles.text2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
set(handles.text5,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
set(handles.text8,'visible','off')



% --- Outputs from this function are returned to the command line.
function varargout = sliderdemo4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i
x=1;
while(x>0)
    %1
for i=0:400
    if(x<=100)
        set(handles.slider1,'value',i)
   
        if(i<50)
        set(handles.text1,'visible','on')
        set(handles.text2,'visible','off')
        else
        set(handles.text2,'visible','on')
        set(handles.text1,'visible','off')
        end
        pause(.01)
    elseif(x<200)
        set(handles.slider2,'value',i)
        if(i<50)
        set(handles.text3,'visible','on')
        set(handles.text4,'visible','off')
        else
        set(handles.text4,'visible','on')
        set(handles.text3,'visible','off')
        end
        pause(.01)
   
end
%3
for i=1:100
    set(handles.slider3,'value',i)
   
    if(i<50)
    set(handles.text5,'visible','on')
    set(handles.text6,'visible','off')
else
    set(handles.text6,'visible','on')
    set(handles.text5,'visible','off')
    
    end
    pause(.01)
   
end
%4
for i=1:100
    set(handles.slider4,'value',i)
   
    if(i<50)
    set(handles.text7,'visible','on')
    set(handles.text8,'visible','off')
else
    set(handles.text8,'visible','on')
    set(handles.text7,'visible','off')
    
    end
    pause(.01)
   
end





%DEC 
    %4
for i=100:-1:1
    set(handles.slider4,'value',i)
   
    if(i<50)
    set(handles.text7,'visible','on')
    set(handles.text8,'visible','off')
else
    set(handles.text8,'visible','on')
    set(handles.text7,'visible','off')
    
    end
    pause(.01)
   
end
%3
for i=100:-1:1
    set(handles.slider3,'value',i)
   
    if(i<50)
    set(handles.text5,'visible','on')
    set(handles.text6,'visible','off')
else
    set(handles.text6,'visible','on')
    set(handles.text5,'visible','off')
    
    end
    pause(.01)
   
end
%2
for i=100:-1:1
    set(handles.slider2,'value',i)
   
    if(i<50)
    set(handles.text3,'visible','on')
    set(handles.text4,'visible','off')
else
    set(handles.text4,'visible','on')
    set(handles.text3,'visible','off')
    
    end
    pause(.01)
   
end
%1
for i=100:-1:1
    set(handles.slider1,'value',i)
   
    if(i<50)
    set(handles.text1,'visible','on')
    set(handles.text2,'visible','off')
else
    set(handles.text2,'visible','on')
    set(handles.text1,'visible','off')
    
    end
    pause(.01)
   
end

end

% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
